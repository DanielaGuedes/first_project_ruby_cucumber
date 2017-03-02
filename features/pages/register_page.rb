=begin
SitePrism gives you a simple, clean and semantic DSL for describing your site using the Page Object Model pattern,
for use with Capybara in automated acceptance testing.

# @author Reinaldo Mateus

Seguindo as boas Praticas de identificados
ID, Class, CSS Selector (Nao deixar eles muito grande e deve ser dinamico).

A ideia eh separa bem os elementos da classe e tenta montar funcoes globais em helps.

=end

require 'site_prism'
require 'selenium-webdriver'


class RegisterPage < SitePrism::Page

  # Declarando todos os elementos da page login.
  element :cadastrar, "#container a.button:first-of-type"
  element :user, "#user_name"
  element :user_email, "#user_email"
  element :user_pass,"#user_password"
  element :input_pass_confirm,  "#user_password_confirmation"
  element :bt_submit, "input[type=submit]"


end
