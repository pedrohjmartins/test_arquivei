# Classe que representa a tela de login
class LoginPage < SitePrism::Page
  set_url 'https://psel-app.arquivei.com.br/login'

  element :campo_email, '#login-email'
  element :campo_senha, '#login-password'
  element :btn_entrar, '#login-submit'
  element :message, '.flash-message'

  def realizarlogin(email, senha)
    campo_email.set email
    campo_senha.set senha
    btn_entrar.click
  end
end
