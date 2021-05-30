# language: pt

Funcionalidade: Buscas no Fake Ecommerce
  Como um cliente do site FakeEcommerce
  Gostaria de poder buscar por produtos
  Para customizar as compras

  Contexto:
    Dado que esteja na página inicial

  @buscar_por_termo_valido
  Cenário: Buscar por termo válido
    Quando buscar pelo produto 'shirt'
    Então devem ser retornados produtos

  @busca_sem_resultados
  Cenário: Busca sem resultados
    Quando buscar pelo produto 'helmet'
    Então nao deverao ser retornados produtos

  @busca_sem_parametros
  Cenário: Busca sem parametros de busca
    Quando realizar uma busca com valor nulo ''
    Então devera ser exibida mensagem para entrar com algum valor

  @busca_com_mais_de_um_resultado
  Cenário: Busca com mais de um resultado
    Quando buscar pelo produto 'dress'
    Então devera ser retornado mais de um produto
