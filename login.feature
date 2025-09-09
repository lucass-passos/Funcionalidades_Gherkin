Feature: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login na plataforma
  Para visualizar meus pedidos

  Background:
    Dado que estou na página de login da EBAC-SHOP

  Scenario Outline: Login com diferentes combinações de credenciais
    Quando eu inserir o usuário "<usuario>" e a senha "<senha>"
    E clicar no botão "Entrar"
    Então deve exibir "<mensagem>"

    Examples:
      | usuario           | senha     | mensagem                           |
      | usuario@valido.com| senha123  | Redirecionar para a tela de checkout |
      | usuario@valido.com| errado    | Usuário ou senha inválidos         |
      | invalido@teste    | senha123  | Usuário ou senha inválidos         |