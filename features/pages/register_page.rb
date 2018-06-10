
class RegisterPage < SitePrism::Page

  # Declarando todos os elementos da page Register.
  element :cadastrar, "#container a.button:first-of-type"
  element :user, "#user_name"
  element :user_email, "#user_email"
  element :user_pass,"#user_password"
  element :input_pass_confirm,  "#user_password_confirmation"
  element :bt_submit, "input[type=submit]"

end
