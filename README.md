# Autenticação de aplicação React com backend em Rails utilizando JWT - Backend

## Observação

Esta aplicação utiliza o provider de autenticação OAuth2 __Égide__, da Defensoria Pública do Estado do Tocantins, mas pode ser adaptado para qualquer provider de autenticação OAuth2.

## Configuração

Criar um arquivo __.env.development__ na raiz do projeto configurando as variáveis de ambiente definidas no arquivo de exemplo __.env.development.example__.

## Gerar posts para desenvolvimento

Após alguns usuários terem sido logados, para gerar alguns usuários no backend da aplicação autenticados com o provider OAuth2, pode ser gerados posts fakers, para trabalhar em desenvolvimento.

`rails posts:create`


## Iniciar a aplicação

`rails s -p 3010`
