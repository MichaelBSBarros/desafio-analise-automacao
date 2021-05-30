Dado("que esteja na página inicial") do
  @home_page.load
end

Quando("buscar pelo produto {string}") do |query|
  @home_page.search(query)
end

Então("devem ser retornados produtos") do
  expect(@search_page.products.first).to have_image
  expect(@search_page.products.first).to have_name
  expect(@search_page.products.first.name.text).to have_content 'shirt'
end

Então("nao deverao ser retornados produtos") do
  find(".alert-warning")
  expect(@search_page).to have_content 'No results were found for your search "helmet"'
end

Então("devera ser retornado mais de um produto") do
  expect(@search_page.products[1]).to have_image
  expect(@search_page.products[1]).to have_name
end

Quando("realizar uma busca com valor nulo {string}") do |query|
  @home_page.search(query)
end

Então("devera ser exibida mensagem para entrar com algum valor") do
  find(".alert-warning")
  expect(@search_page).to have_content 'Please enter a search keyword'
end

