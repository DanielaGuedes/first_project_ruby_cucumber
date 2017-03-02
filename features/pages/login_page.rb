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


class LoginPage < SitePrism::Page

  # Declarando todos os elementos da page login.
  element :field_email, "input#email"
  element :field_pass, "input#user_password"
  element :input_pass_confirm,  "user_password_confirmation"
  element :menu_account, "a.nav__link-account.t_hide.m_hide"
  element :bt_submit, "input[type=submit]"
  element :logout_menu, "ul #track_logout"
  element :main_menu, ".account-header__account-link.account-header__account-with-sub-menu"


end
