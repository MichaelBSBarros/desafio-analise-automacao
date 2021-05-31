Dado('que estou na página inicial') do
    @home_page.load
end
  
Quando('e busco pelo produto {string}') do |string|
    @home_page.search(string)
end
  
Quando('é retornado produtos') do
    expect(@search_page.products.first).to have_image
    expect(@search_page.products.first).to have_name
    expect(@search_page.products.first.name.text).to have_content 'shirt'
end
  
Quando('seleciono o produto para adicionar ao carrinho') do
    find(".ajax_add_to_cart_button").click
    sleep 10
    find(".button-medium", match: :first).click
end
  
Entao('devo poder visualizar o produto no carrinho') do
    find(".label-success", match: :first)
end