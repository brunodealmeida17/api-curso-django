import requests

headers = {'Authorization': 'Token cf73e2e8533d1e9d7a40acbe02a48b86e2244473'}

url_base_cursos = 'http://127.0.0.1:8000/api/v2/cursos/'
url_base_avaliacoes = 'http://localhost:8000/api/v2/avaliacoes/'


curso_atualizado = {    
    "titulo": "Novo Curso de Python",
    "url": "http://www.youtube.com/projeto",
    "duracao": 4,
    "valor": 2500
}


# Buscando o curso com ID 6
# curso = requests.get(url=f'{url_base_cursos}6/', headers=headers)
# print(curso.json())


resultado = requests.put(url=f'{url_base_cursos}1/', headers=headers, data=curso_atualizado)


# Testando o código de status HTTP
assert resultado.status_code == 200

# Testando o título
assert resultado.json()['titulo'] == curso_atualizado['titulo']

