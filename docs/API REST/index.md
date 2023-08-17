# Introdução

## Variáveis de Ambiente
As variáveis ambientes são utilizadas para facilitar a configuração inicial do desenvolvimento em um ambiente de trabalho, sem a nessessidade de alteração do código durante o desenvolvimento e evitando possiveis conflitos entre o desenvolvimento dos menbros da equipe, tambem pode ser utilizada até mesmo para tornar segura uma variável em questão.
### Configurando Variáveis
Variáveis podem ser configuradas no sistema ou na IDE.
#### IntelliJ
Podem ser configuradas nas configurações de Run/Debug, basta abrir *Edit Run/Debug configurations* e configurar as variaveis na sessão *Enviroment variables*
#### Docker
Podem ser configuradas atraves do arquivo `.env`

### Tabela de Variáveis

| Variável                   | Valor Padrão | Descrição                   |
|----------------------------|--------------|-----------------------------|
| `API_PROFILE_ACTIVE`       | dev  | Profiles pre configurados para alterar rapidamentes entre modo de teste, desenvolvimento e produção. Possiveis valores: *test, dev, prod*        |
| `API_JWT_SECRET_KEY`       | test_key  | Chave secreta para assinatura do token JWT |
| `API_DB_NAME`              | universime  | Nome da Database |
| `API_DB_PORT`              | 5432   | Porta da conexão da Database |
| `API_DB_DOMAIN`            | localhost   | Domínio da conexão da Database |
| `API_DB_URL`               | jdbc:postgresql://API_DB_DOMAIN:API_DB_PORT/API_DB_NAME   | URL da conexão da Database |
| `API_DB_USER`              | postgres   | Usuário da conexão da Database |
| `API_DB_PASS`              | postgres   | Senha da conexão da Database |
| `API_DB_FLY_URL`           | API_DB_URL | Flyway Database URL |
| `API_DB_FLY_USER`          | API_DB_USER | Usuário da conexão Flyway Database |
| `API_DB_FLY_PASS`          | API_DB_PASS | Senha da conexão Flyway Database |
| `API_SERVER_PORT`          | 8080 | Porta da API. |
| `API_SWAGGER_ENABLED`      | true | Ativar o Swagger. |
| `API_GOOGLE_CLIENT_ID`     |  | ClientID do Google API |
| `API_SAVE_IMAGE_LOCAL`     | false | Salvar imagens localmente |
| `API_PATH_IMAGE_SAVE`      | src/main/resources/static/img/imagem/ | Diretório para salvar imagens |
| `API_IMGUR_CLIENT_ID`      |  | ClientID para API do Imgur |
| `API_SIGNUP_ENABLED`       | true | Ativar Registrar-se |
| `API_LOGIN_GOOGLE_ENABLED` | true | Ativar entrar com Google |