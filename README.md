# API Django Rest Framework Esta é uma API desenvolvida com Django Rest Framework. A API permite o gerenciamento de cursos e requer autenticação via token para acessar os endpoints. 

Esta é a documentação da API criada com Django Rest Framework. A API possui duas versões, V1 e V2, e requer autenticação por token para acessar os endpoints.

## URL Base da API

A URL base da API é: `http://localhost:8000/api/

## Endpoints

### Versão 1 (V1)

#### Lista de Cursos

-   **Endpoint:** `/v1/cursos/`
-   **Método:** GET
-   **Descrição:** Retorna a lista de todos os cursos disponíveis.
-   **Autenticação:** Requer autenticação via token.

#### Detalhes do Curso

-   **Endpoint:** `/v1/cursos/{id}/`
-   **Método:** GET
-   **Descrição:** Retorna os detalhes de um curso específico com base no ID fornecido.
-   **Parâmetros de URL:**
    -   `{id}`: ID do curso.
-   **Autenticação:** Requer autenticação via token.

#### Criar Curso

-   **Endpoint:** `/v1/cursos/`
-   **Método:** POST
-   **Descrição:** Cria um novo curso.
-   **Autenticação:** Requer autenticação via token.
-   **Corpo da Solicitação (JSON):**
    -   `titulo`: Título do curso.
    -   `url`: URL do curso.
    -   `duracao`: Duração do curso (em horas).
    -   `valor`: Valor do curso.

#### Atualizar Curso

-   **Endpoint:** `/v1/cursos/{id}/`
-   **Método:** PUT
-   **Descrição:** Atualiza os detalhes de um curso existente com base no ID fornecido.
-   **Parâmetros de URL:**
    -   `{id}`: ID do curso.
-   **Autenticação:** Requer autenticação via token.
-   **Corpo da Solicitação (JSON):** Você pode incluir qualquer um ou todos os seguintes campos:
    -   `titulo`: Título atualizado do curso.
    -   `url`: URL atualizada do curso.
    -   `duracao`: Duração atualizada do curso (em horas).
    -   `valor`: Valor atualizado do curso.

#### Excluir Curso

-   **Endpoint:** `/v1/cursos/{id}/`
-   **Método:** DELETE
-   **Descrição:** Exclui um curso específico com base no ID fornecido.
-   **Parâmetros de URL:**
    -   `{id}`: ID do curso.
-   **Autenticação:** Requer autenticação via token.

### Versão 2 (V2)

#### Lista de Cursos

-   **Endpoint:** `/v2/cursos/`
-   **Método:** GET
-   **Descrição:** Retorna a lista de todos os cursos disponíveis (versão 2).
-   **Autenticação:** Requer autenticação via token.

#### Detalhes do Curso

-   **Endpoint:** `/v2/cursos/{id}/`
-   **Método:** GET
-   **Descrição:** Retorna os detalhes de um curso específico com base no ID fornecido (versão 2).
-   **Parâmetros de URL:**
    -   `{id}`: ID do curso.
-   **Autenticação:** Requer autenticação via token.

#### Criar Curso

-   **Endpoint:** `/v2/cursos/`
-   **Método:** POST
-   **-   **Descrição:** Cria um novo curso (versão 2).
-   **Autenticação:** Requer autenticação via token.
-   **Corpo da Solicitação (JSON):**
    -   `titulo`: Título do curso.
    -   `url`: URL do curso.
    -   `duracao`: Duração do curso (em horas).
    -   `valor`: Valor do curso.

#### Atualizar Curso

-   **Endpoint:** `/v2/cursos/{id}/`
-   **Método:** PUT
-   **Descrição:** Atualiza os detalhes de um curso existente com base no ID fornecido (versão 2).
-   **Parâmetros de URL:**
    -   `{id}`: ID do curso.
-   **Autenticação:** Requer autenticação via token.
-   **Corpo da Solicitação (JSON):** Você pode incluir qualquer um ou todos os seguintes campos:
    -   `titulo`: Título atualizado do curso.
    -   `url`: URL atualizada do curso.
    -   `duracao`: Duração atualizada do curso (em horas).
    -   `valor`: Valor atualizado do curso.

#### Excluir Curso

-   **Endpoint:** `/v2/cursos/{id}/`
-   **Método:** DELETE
-   **Descrição:** Exclui um curso específico com base no ID fornecido (versão 2).
-   **Parâmetros de URL:**
    -   `{id}`: ID do curso.
-   **Autenticação:** Requer autenticação via token.

## Autenticação

A autenticação na API é feita por meio de tokens. Para acessar os endpoints protegidos, você precisa incluir o token de autenticação no cabeçalho da solicitação HTTP.

Exemplo de cabeçalho de solicitação:

    Authorization: Token {seu_token}
    
Substitua `{seu_token}` pelo token de autenticação válido fornecido.

## Exemplos de Solicitação

Aqui estão alguns exemplos de solicitações aos endpoints da API:

1.  Obter lista de cursos (V1):
    
    -   Método: GET
    -   URL: `http://ec2-18-228-8-31.sa-east-1.compute.amazonaws.com:8000/api/v1/cursos/`
    -   Cabeçalho: `Authorization: Token {seu_token}`
2.  Obter detalhes de um curso específico (V1):
    
    -   Método: GET
    -   URL: `http://ec2-18-228-8-31.sa-east-1.compute.amazonaws.com:8000/api/v1/cursos/{id}/`
    -   Cabeçalho: `Authorization: Token {seu_token}`
    -   Parâmetros de URL: Substitua `{id}` pelo ID do curso desejado.
3.  Criar um novo curso (V1):
    
    -   Método: POST
    -   URL: `http://ec2-18-228-8-31.sa-east-1.compute.amazonaws.com:8000/api/v1/cursos/`
    -   Cabeçalho: `Authorization: Token {seu_token}`
    -   Corpo da Solicitação (JSON): Forneça os detalhes do novo curso.
4.  Atualizar os detalhes de um curso existente (V1):
    
    -   Método: PUT
    -   URL: `http://ec2-18-228-8-31.sa-east-1.compute.amazonaws.com:8000/api/v1/cursos/{id}/`
    -   Cabe
    5.  Excluir um curso específico (V1):
    
    -   Método: DELETE
    -   URL: `http://ec2-18-228-8-31.sa-east-1.compute.amazonaws.com:8000/api/v1/cursos/{id}/`
    -   Cabeçalho: `Authorization: Token {seu_token}`
    -   Parâmetros de URL: Substitua `{id}` pelo ID do curso que deseja excluir.
6.  Obter lista de cursos (V2):
    
    -   Método: GET
    -   URL: `http://ec2-18-228-8-31.sa-east-1.compute.amazonaws.com:8000/api/v2/cursos/`
    -   Cabeçalho: `Authorization: Token {seu_token}`
7.  Obter detalhes de um curso específico (V2):
    
    -   Método: GET
    -   URL: `http://ec2-18-228-8-31.sa-east-1.compute.amazonaws.com:8000/api/v2/cursos/{id}/`
    -   Cabeçalho: `Authorization: Token {seu_token}`
    -   Parâmetros de URL: Substitua `{id}` pelo ID do curso desejado.
8.  Criar um novo curso (V2):
    
    -   Método: POST
    -   URL: `http://ec2-18-228-8-31.sa-east-1.compute.amazonaws.com:8000/api/v2/cursos/`
    -   Cabeçalho: `Authorization: Token {seu_token}`
    -   Corpo da Solicitação (JSON): Forneça os detalhes do novo curso.
9.  Atualizar os detalhes de um curso existente (V2):
    
    -   Método: PUT
    -   URL: `http://ec2-18-228-8-31.sa-east-1.compute.amazonaws.com:8000/api/v2/cursos/{id}/`
    -   Cabeçalho: `Authorization: Token {seu_token}`
    -   Parâmetros de URL: Substitua `{id}` pelo ID do curso que deseja atualizar.
    -   Corpo da Solicitação (JSON): Forneça os detalhes atualizados do curso.
10.  Excluir um curso específico (V2):
    
    -   Método: DELETE
    -   URL: `http://ec2-18-228-8-31.sa-east-1.compute.amazonaws.com:8000/api/v2/cursos/{id}/`
    -   Cabeçalho: `Authorization: Token {seu_token}`
    -   Parâmetros de URL: Substitua `{id}` pelo ID do curso que deseja excluir.

Lembre-se de substituir `{seu_token}` pelo token de autenticação válido fornecido.

# Usar a API localmente

## Requisitos  
- Python 3.6 ou superior 
- - Django 2.2.9 
- - django-filter 2.2.0 
- - djangorestframework 3.11.0 
- - Markdown 3.1.1 - pytz 2019.3 
-  sqlparse 0.3.0 
- ## Instalação  
1. Certifique-se de ter o Python instalado em seu sistema. Você pode baixar a versão mais recente do Python em [python.org](https://www.python.org/downloads/). 
2. Clone este repositório para o seu ambiente de desenvolvimento local: 
`git clone https://github.com/brunodealmeida17/api-curso-django`
3. Crie um ambiente virtual para isolar as dependências da API. Navegue até o diretório raiz do projeto e execute o seguinte comando:

     python -m venv myenv

Isso criará um ambiente virtual chamado "myenv". 

4.  Ative o ambiente virtual: 
- No  Windows: 
``` myenv\Scripts\activate ``` 
- No macOS/Linux: 
 ``` source myenv/bin/activate ```
	 
5.  Instale  as dependências da API. No diretório raiz do projeto, execute o seguinte comando:

    pip install -r requirements.txt

 Isso instalará todas as dependências necessárias para executar a API localmente. 

6. Aplique as migrações do banco de dados:

 ``` python manage.py migrate ```

7. Inicie o servidor de desenvolvimento do Django:
	 ``` python manage.py runserver```
	 
  Isso iniciará o servidor de desenvolvimento do Django.

8. Agora você pode acessar a API localmente através do URL `http://localhost:8000`. Certifique-se de substituir os URLs de exemplo que foram fornecidos anteriormente pelos URLs reais da sua API. Certifique-se de que o ambiente virtual esteja ativado toda vez que você for  executar a API localmente. Caso contrário, as dependências instaladas globalmente podem interferir na execução correta da API.
