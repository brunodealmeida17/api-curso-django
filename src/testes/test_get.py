import requests

headers = {'Authorization': 'Token cf73e2e8533d1e9d7a40acbe02a48b86e2244473'}

url_base_cursos = 'http://127.0.0.1:8000/api/v2/cursos/'
url_base_avaliacoes = 'http://localhost:8000/api/v2/avaliacoes/'

resultado = requests.get(url=url_base_cursos, headers=headers)

print(resultado.json())

# Testando se o endpoint está correto
assert resultado.status_code == 200

# Testando a quantidade de registros
assert resultado.json()['count'] == 8

# Testando se o título do primeiro curso está correto
assert resultado.json()['results'][0]['titulo'] == 'Curso de python'

