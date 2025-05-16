# useCanI
Usado para verificar se um usuário tem acesso a determinada funcionalidade de um grupo.

## Retorno
Retorna uma função com a seguinte assinatura:  
`(feature: Feature, permission = Permission.READ, optionalGroup?: Group) => boolean`.
