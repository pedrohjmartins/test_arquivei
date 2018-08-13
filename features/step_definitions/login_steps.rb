Dado('que usuário esteja na tela de login do Arquivei') do
  @login_page.load
end

Quando('usuário informar um login com {string} e {string} válido') do |email, senha|
  @login_page.realizarlogin(email, senha)
  @email = email
end

Então('o usuário deve ser autenticado com sucesso') do
  expect(@home_page.nav_bar).to have_content @email
end

Então('o sistema deve exibir a {string}') do |pagina_esperada|
  expect(page).to have_content pagina_esperada
end

Quando('usuário informar um login com {string} e {string} inválido') do |email, senha|
  @login_page.realizarlogin(email, senha)
end

Então('o usuário não deve ser autenticado') do
  expect(@login_page.btn_entrar).to be_visible
end

Então('o sistema deve exibir a {string} informando o motivo') do |mensagem|
  expect(@login_page.message.text).to have_content mensagem
end

Quando('usuário não informar um login com {string} e ou {string}') do |email, senha|
  @login_page.realizarlogin(email, senha)
end
