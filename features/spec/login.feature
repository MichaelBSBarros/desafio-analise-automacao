# language: pt

Funcionalidade: Login no Ecommerce Fake
  Como um cliente do site FakeEcommerce
  Gostaria de realizar login no site
  Para poder acessar ao carrinho de compras

  Contexto:
    Dado que estou na pagina de login

  @realizar_login
  Cenário: Realizar login
    Quando preencho o login e senha 
    |email|teste.a.login@email.com|
    |senha|qwe33                  |
    E prossigo com o sign in
    Entao devo ser direcionado para a conta ativa

  @falha_login
  Cenário: falha no login
    Quando preencho o login e senha 
    |email|teste.a.login@email.com|
    |senha|12345                  |
    E prossigo com o sign in
    Entao devo ser alertado sobre falha de autenticacao

  @email_invalido
  Cenário: email invalido
    Quando preencho o login e senha 
    |email|teste.com  |
    |senha|qwe33      |
    E prossigo com o sign in
    Entao devo ser alertado sobre o email invalido
  
  @senha_invalida
  Cenário: senha invalida
    Quando preencho o login e senha 
    |email|teste.a.login@email.com|
    |senha|zxc                    |
    E prossigo com o sign in
    Entao devo ser alertado sobre a senha invalida

  @login_sem_senha
  Cenário: Login sem senha
    Quando preencho apenas o email 'teste.a.login@email.com'
    E prossigo com o sign in
    Entao devo ser alertado sobre a falta da senha

  @login_sem_email
  Cenário: Login sem email
    Quando preencho apenas a senha 'qwe33'
    E prossigo com o sign in
    Entao devo ser alertado sobre a falta do email