import requests

headers = {'Authorization': 'Token cf73e2e8533d1e9d7a40acbe02a48b86e2244473'}

url_base_cursos = 'http://127.0.0.1:8000/api/v1/cursos/'
url_base_avaliacoes = 'http://localhost:8000/api/v2/avaliacoes/'


novo_curso = {
    "titulo": "Formação Devops",
    "url": "http://www.youtube.com/formacao_devops",
    "duracao": 4,
    "valor": 2200
}

resultado = requests.post(url=url_base_cursos, headers=headers, data=novo_curso)


# Testando o código de status HTTP 201
assert resultado.status_code == 201

# Testando se o título do curso retornado é o mesmo do informado
assert resultado.json()['titulo'] == novo_curso['titulo']


