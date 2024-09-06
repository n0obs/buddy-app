# Configuração da Chave da API do ChatGPT

Este projeto utiliza a API do ChatGPT para funcionalidades de conversação. Para que o chat funcione corretamente, é necessário configurar a chave da API no arquivo `api_calls.dart`. 

## ⚠⚠ UTILIZE A CHAVE APRESENTADA NO PDF DE ENTREGA, a mesma não pode subir aqui sem que a OpenAI bloqueia (agradecemos a compreensão). ⚠⚠



### 1. Localize o arquivo `api_calls.dart`:
- Caminho do arquivo: `lib/backend/api_requests/api_calls.dart`

### 2. Altere a chave da API:
- Abra o arquivo `api_calls.dart` e vá até a linha **31** (ou procure por "bearer").
- Substitua a chave da API destacada no código por sua nova chave, sendo a substituição a partir do bearer.

#### Exemplo de alteração

**Antes da alteração:**
```dart
Authorization: 
Bearer = 'sk-aaaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbccccccccccccccccccccccdddddddddddddddddddddd',
```
```dart
headers: {
  'Authorization': 'Bearer sk-novachaveaqui',
  'Content-Type': 'application/json',
},
```
