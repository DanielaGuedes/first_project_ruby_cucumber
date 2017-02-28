=begin
SitePrism gives you a simple, clean and semantic DSL for describing your site using the Page Object Model pattern,
for use with Capybara in automated acceptance testing.

# @author Reinaldo Mateus

Seguindo as boas Praticas de identificados
ID, Class, CSS Selector (Nao deixar eles muito grande e deve ser dinamico).

A ideia eh separa bem os elementos da classe e tenta montar funcoes globais em helps.

=end

require File.dirname(__FILE__) + '/../../features/pages/base_page'

#include BasePage

require 'site_prism'
require 'selenium-webdriver'


class LoginPage < SitePrism::Page

  # Declarando todos os elementos da page login.
  # Fiz dessa forma pois estava dando erro com a forma de element.
  element :input_email, "email"
  element :main_menu, ".account-header__account-link.account-header__account-with-sub-menu"
  element :input_pass, "user_password"
  element :input_pass_confirm,  "user_password_confirmation"
  element :menu_account, "a.nav__link-account.t_hide.m_hide"
  element :bt_submit, "input[type=submit]"
  element :logout_menu, "ul #track_logout"
  element :main_menu, ".account-header__account-link.account-header__account-with-sub-menu"
  # @base = BasePageWeb.new
  # @base.load

  def initialize
    @input_email = "email"
    @input_pass = "user_password"
    @input_pass_confirm = "user_password_confirmation"
    @menu_account = "a.nav__link-account.t_hide.m_hide"
    @bt_submit = "input[type=submit]"
    @logout_menu = "ul #track_logout"
    @main_menu = ".account-header__account-link.account-header__account-with-sub-menu"
  end

  def clicarMinhaContaOFF
    # Boa pratica nao juntar o click com o element, quando dar erro no elemento
    # eh facil de indentificar, facilitando a manutencao.
  	elem = check(@menu_account)
    puts(elem) # adicionar ao log.
    elem.click
  end

  def selecionaMenu
    # Boa pratica nao juntar o click com o element, quando dar erro no elemento
    # eh facil de indentificar, facilitando a manutencao.
    elem = check(@main_menu)
    elem.click
    puts(elem) # adicionar ao log.
  end

  def inputEmail(email)
    @email = email
    result = fill_data(@input_email, email)
    return result
  end

  def inputSenha(senha)
    result = fill_data(@input_pass, senha)
    return result
  end

  def clicarProsseguir 
  	elem = page.find(:css, @bt_submit)
    puts(elem) # adicionar ao log.
    elem.click
  end

  def clicarSair
    selecionaMenu
    elem = page.find(:css, @logout_menu)
    puts(elem) # adicionar ao log.
    elem.click
  end

  def verified_main_menu
    # verifica a existencia do menu de usuario.
    elem = check(@main_menu)
    return elem
  end

  def verified_logout
    # verifica o logout.
    elem = check(@menu_account)
  end

  def check(elem)
    # verifica o elemento, estah separado porque pode melhorar depois a funcao.
    elem = page.find(:css, elem, visible: true)
    return elem
  end

  def fill_data (elem_id, send_value)

    @elem_id = elem_id
    @send_value = send_value

    # Primeiro mapear o elemento e ver se ele foi criado.
    user_elem = page.find(:id, @elem_id, visible: true)
    print(user_elem)

    # preenche os dados
    user_elem.send_keys @send_value

    # Verifica se o campo foi preenchido.
    user_elem = page.find(:id, @elem_id)

    # Imprimir valor
    user_elem = page.find(:id, @elem_id)

    return user_elem

  end
end
