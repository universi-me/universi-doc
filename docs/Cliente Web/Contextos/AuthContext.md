# AuthContext
O AuthContext gerencia a autenticação de usuário, armazenando dados relacionados ao usuário da sessão atual.

## Propriedades
- `user`: Usuário atual (`null` se deslogado);
- `profile`: Perfil do usuário atual (`null` se deslogado);
- `profileLinks`: Array de links associados ao perfil do usuário (array vazia se deslogado);
- `profileGroups`: Array de grupos que o usuário participa (array vazia se deslogado);
- `organization`: Organização atual.

## Métodos
- `signin( email: string, password: string, recaptchaToken: string | null )`: Realiza login de usuário via email/username e senha.
- `signinGoogle()`: Realiza login do usuário via Google OAuth2;
- `signout()`: Realiza logout do usuário;
- `updateLoggedUser()`: Recarrega os dados do usuário logado.
