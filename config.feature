#language: pt

Feature: Configurar produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Background:
    Dado que estou na página de configuração de produto

  Scenario: Configuração obrigatória de cor, tamanho e quantidade
    Quando eu não selecionar cor, tamanho ou quantidade
    E clicar em "Adicionar ao carrinho"
    Então deve exibir a mensagem de erro "Selecione cor, tamanho e quantidade"

  Scenario: Limitar quantidade máxima de produtos
    Quando eu selecionar a quantidade de "11"
    Então deve exibir a mensagem "É permitido no máximo 10 produtos por venda"

  Scenario: Limpar configuração do produto
    Dado que selecionei a cor "Azul", tamanho "M" e quantidade "2"
    Quando eu clicar no botão "Limpar"
    Então deve voltar ao estado original da tela