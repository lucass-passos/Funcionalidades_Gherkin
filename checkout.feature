Feature: Cadastro no Checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Background:
    Dado que estou na tela de cadastro do checkout

  Scenario: Cadastro com campos obrigatórios preenchidos corretamente
    Quando eu preencher todos os campos obrigatórios com dados válidos
    E clicar em "Cadastrar"
    Então deve exibir a mensagem "Cadastro realizado com sucesso"

  Scenario Outline: Tentativa de cadastro inválido
    Quando eu preencher os campos com <nome>, <email> e <senha>
    E clicar em "Cadastrar"
    Então deve exibir a mensagem "<mensagem>"

    Examples:
      | nome   | email            | senha   | mensagem                                |
      | João   | joaoemail.com    | 123456  | E-mail em formato inválido              |
      | Maria  |                  | 123456  | Campo obrigatório não pode estar vazio  |
      |        | maria@teste.com  | 123456  | Campo obrigatório não pode estar vazio  |
