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

Esta implementação segue o fluxo desenhado [neste arquivo](https://github.com/lucivaldo/auth-react-rails-jwt-frontend/blob/main/docs/Autentica%C3%A7%C3%A3o%20JWT%20-%20Fluxo%20frontend%20React%20com%20backend%20em%20Rails.png)
