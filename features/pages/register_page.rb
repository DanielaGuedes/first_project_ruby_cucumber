require 'site_prism'
require 'selenium-webdriver'

$first_names = []
$last_names = []
$emails = []
$pass = []

class RegisterPage < SitePrism::Page

  # Declarando todos os elementos da page Register.
  element :cadastrar, "#container a.button:first-of-type"
  element :user, "#user_name"
  element :user_email, "#user_email"
  element :user_pass,"#user_password"
  element :input_pass_confirm,  "#user_password_confirmation"
  element :bt_submit, "input[type=submit]"

  @data = MySQL.new
  result = @data.query_test('SELECT * FROM user')

  result.each do |user|
    puts user
    $first_names.push(user['nome'])
    $last_names.push(user['sobrenome'])
    $emails.push(user['email'])
    $pass.push(user['password'])
  end

end
