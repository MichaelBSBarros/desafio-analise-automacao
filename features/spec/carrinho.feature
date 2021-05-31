# language: pt

Funcionalidade: Adicao de produto ao carrinho
  Como um cliente do site FakeEcommerce
  Gostaria de selecionar um produto para o carrinho de compras
  Para poder gerenciar meus intens antes de compra-los

  Contexto:
    Dado que estou na página inicial

  @adicionar_produto
  Cenário: adicionar produto ao carrinho
    Quando e busco pelo produto 'shirt'
    E é retornado produtos
    E seleciono o produto para adicionar ao carrinho
    Entao devo poder visualizar o produto no carrinho


        
        
        


