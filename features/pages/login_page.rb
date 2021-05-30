module Pages
  class LoginPage < SitePrism::Page
    set_url '/index.php?controller=authentication&back=my-account'

    element  :breadcrumb, ''
    element  :input_create_account_email, ''
    element  :btn_create_an_account, ''
    element  :input_login_email, '#email'
    element  :input_login_password, '#passwd'
    element  :link_forgot_password, ''
    element  :btn_sign_in, '.icon-lock'
    element  :alert_message_authentication_failed, '.alert alert-danger'

    def setemail(email)
      input_login_email.set(email)
    end

    def setpassw(senha)
      input_login_password.set(senha)
    end 

    def click()
      btn_sign_in.click
    end 

  end
end
