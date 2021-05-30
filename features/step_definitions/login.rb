Dado("que estou na pagina de login") do
    @login_page.load
end
  
Quando("preencho o login e senha") do |table|
    @email = table.rows_hash["email"]
    @passw = table.rows_hash["senha"]
    @login_page.setemail(@email)
    @login_page.setpassw(@passw)
end

Quando("prossigo com o sign in") do
    @login_page.click
end

Quando("preencho apenas o email {string}") do |email|
    @login_page.setemail(email)
end

Quando("preencho apenas a senha {string}") do |senha|
    @login_page.setpassw(senha)
end

Entao("devo ser direcionado para a conta ativa") do
    find(".myaccount-link-list", match: :first)
end

Entao('devo ser alertado sobre falha de autenticacao') do    
    find(".alert-danger", match: :first)
    expect(@search_page).to have_content 'Authentication failed.'
end

Entao('devo ser alertado sobre o email invalido') do
    find(".alert-danger", match: :first)
    expect(@search_page).to have_content 'Invalid email address.'
end

Entao('devo ser alertado sobre a senha invalida') do
    find(".alert-danger", match: :first)
    expect(@search_page).to have_content 'Invalid password.'
end

Entao('devo ser alertado sobre a falta da senha') do
    find(".alert-danger", match: :first)
    expect(@search_page).to have_content 'Password is required.'
end

Entao('devo ser alertado sobre a falta do email') do
    find(".alert-danger", match: :first)
    expect(@search_page).to have_content 'An email address required.'
end