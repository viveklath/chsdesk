class LoginMailer < ActionMailer::Base
  default from: "admin@chsdesk.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.login_mailer.password_reset.subject
  #
  def password_reset(login)
    @login = login
    mail :to => login.email, :subject => "Password Reset"
  end
end
