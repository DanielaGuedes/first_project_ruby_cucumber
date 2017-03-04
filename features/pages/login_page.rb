
require 'site_prism'
require 'selenium-webdriver'


class LoginPage < SitePrism::Page

  # Declarando todos os elementos da page login.
  element :field_email, "#email"
  element :field_pass, "#user_password"
  element :menu_account, "a.nav__link-account.t_hide.m_hide"
  element :bt_submit, "input[type=submit]"
  element :logout_menu, "ul #track_logout"
  element :main_menu, ".account-header__account-link.account-header__account-with-sub-menu"
  element :main_menu_user, ".account-header__account-link.account-header__account-with-sub-menu strong"

end
