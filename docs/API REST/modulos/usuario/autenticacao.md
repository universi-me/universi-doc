# Autenticação

O sistema de autenticação utiliza a framework *Spring Security* para o gerenciamento e altenticação do usuário ao sistema, a autenticação é identificada por meio de *Cookies*  identificado como ``JSESSIONID``, e caso o client utilizado para a autenticação com a API não suporte *Cookies*, como alternativa a API suporta a identificação por meio de tokens *JWT*, onde o mesmo deve ser guardada de forma segura na sessão da aplicação do client.

## Login

### Requisição
Método: `POST`

Endpoint: `/api/signin`

```plaintext linenums="1"
POST /api/signin
```
```json linenums="1"
{
	"username": "admin",
	"password": "admin"
}
```

#### Parametros

| Atributo                 | Tipo     | Requerido | Descrição                   |
|--------------------------|----------|-----------|-----------------------------|
| `username`               | String   | Sim (*)   | username do usuário.        |
| `email`                  | String   | Sim (*)   | email do usuário.           |
| `password`               | String   | Sim       | senha plaintext do usuário. |
* Ao menos um deve ser especificado (`username`, `email`)

### Resposta

```json linenums="1"
{
    "success": true,
    "message": "Usuário Logado com sucesso.",
    "redirectTo": "/p/admin",
    "token": "eyJhbGciOiJIUzUxMiJ9...",
    "body": {
        "user": {
            "id": 1,
            "name": "admin",
            "email": null
        }
    }
}
```

#### Parametros

| Atributo                 | Tipo     | Requerido | Descrição                                    |
|--------------------------|----------|-----------|----------------------------------------------|
| `success`                | Boolean  | Yes       | indica se a operação teve exito.             |
| `message`                | String   | Yes       | mensagem para o usuário.                     |
| `redirectTo`             | String   | Yes       | página para redirecionamento.                |
| `token`                  | String   | Yes       | JWT token da sessão.                         |
| `body`                   | String   | Yes       | Conteudo da resposta: usuário atual logado.  |