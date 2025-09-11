# 🧾 Especificações de Testes - EBAC SHOP

Este projeto contém cenários de testes escritos em **Gherkin**, descrevendo funcionalidades principais da EBAC-SHOP.

---

## 📖 Funcionalidades Cobertas

### 1. Cadastro no Checkout
- Cadastro com campos obrigatórios preenchidos corretamente  
- Tentativas de cadastro inválido com diferentes combinações  

### 2. Configuração de Produto
- Validação de cor, tamanho e quantidade obrigatórios  
- Limitação de quantidade máxima de produtos  
- Função de limpar configuração  

### 3. Login na Plataforma
- Login com credenciais válidas  
- Login com credenciais inválidas  
- Mensagens de erro apropriadas  

---

## 📂 Estrutura
- **checkout.feature** → cenários de cadastro  
- **configurar-produto.feature** → cenários de configuração de produtos  
- **login.feature** → cenários de login  

---

## 🚀 Como Utilizar
1. Instale o [Cucumber](https://cucumber.io/) ou framework de BDD compatível.  
2. Adicione estes arquivos `.feature` no diretório de testes do seu projeto.  
3. Rode os testes para validar os comportamentos descritos.  

---

## ✅ Exemplo de Cenário
```gherkin
Scenario: Cadastro com campos obrigatórios preenchidos corretamente
  Quando eu preencher todos os campos obrigatórios com dados válidos
  E clicar em "Cadastrar"
  Então deve exibir a mensagem "Cadastro realizado com sucesso"
