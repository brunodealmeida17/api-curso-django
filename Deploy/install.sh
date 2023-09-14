#!/bin/bash

# Script de configuração para o projeto Django com Celery, Redis, Django Channels e Gunicorn

# Capturar o diretório atual
cd ../..

sudo mkdir /opt
sudo chmod a+rwxX /opt
sudo mv ./apicursos /opt/apicursos

cd /opt/apicursos/
CURRENT_DIR=$(pwd)


sudo /sbin/iptables -t nat -I PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8000

sudo groupadd apicursos
sudo useradd -s /sbin/nologin --system -g apicursos apicursos
sudo usermod -aG ubuntu apicursos


mkdir logs
mkdir logs/gunicorn
mkdir logs/celery

sudo touch $CURRENT_DIR/logs/gunicorn/access_log
sudo touch $CURRENT_DIR/logs/gunicorn/error_log
sudo chown -R apicursos:apicursos $CURRENT_DIR/logs/gunicorn/
sudo chmod -R g+w $CURRENT_DIR/logs/gunicorn/


TOKEN=`cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-96} | head -n 1`



# Instale as dependências do sistema
sudo apt-get update
sudo apt-get install -y nginx python3.10-venv redis-server python3-pip

# Configuração do projeto Django


# Configure o ambiente virtual e ative-o
python3 -m venv env
source env/bin/activate


# Instale as dependências do projeto
pip install -r requirements.txt

cd /src
# Execute as config of Django
export DJANGO_DEBUG=True
python manage.py collectstatic --noinput
python manage.py makemigrations
python manage.py migrate
cd ..

sed -e "s|APP_PWD|$CURRENT_DIR|g" -i $CURRENT_DIR/Deploy/gunicorn_conf.py
sed -e "s|TOKEN|$TOKEN|g" -i $CURRENT_DIR/Deploy/gunicorn_conf.py
sed -e "s|TOKEN|$TOKEN|g" -i $CURRENT_DIR/Deploy/tubedownloads.env
sed -e "s|APP_PWD|$CURRENT_DIR|g" -i $CURRENT_DIR/Deploy/tubedownloads
sed -e "s|APP_PWD|$CURRENT_DIR|g" -i $CURRENT_DIR/Deploy/apicursos.service
sed -e "s|TOKEN|$TOKEN|g" -i $CURRENT_DIR/Deploy/apicursos.env

mv $CURRENT_DIR/Deploy/apicursos.env $CURRENT_DIR/
mv $CURRENT_DIR/Deploy/gunicorn_conf.py $CURRENT_DIR/src/
mv $CURRENT_DIR/Deploy/uvicorn_worker.py $CURRENT_DIR/src/
sudo mv $CURRENT_DIR/Deploy/apicursos /etc/nginx/sites-available/

# Config of Gunicorn
sudo mv $CURRENT_DIR/Deploy/apicursos.service /etc/systemd/system/

# init the service of Gunicorn
sudo systemctl start apicursos.service
sudo systemctl enable apicursos.service
sudo systemctl status apicursos.service


sudo ln -s /etc/nginx/sites-available/apicursos /etc/nginx/sites-enabled/

# restart the service of Nginx
sudo systemctl restart nginx
sudo systemctl status nginx


# Run Certbot for SSL/TLS certificate
#sudo certbot --nginx -d tubedownloads.online