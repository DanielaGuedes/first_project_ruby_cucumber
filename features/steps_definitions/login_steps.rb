login_page = LoginPage.new
register = RegisterPage.new

Dado(/^que eu esteja no site da Youse\.$/) do
  page.visit('')
end

E(/^clicar em Minha Conta\.$/) do
  login_page.menu_account.click
end

When(/^preencher o campo email\.$/) do
  email = $emails[0]
  login_page.field_email.set email
  # valida o preenchimento do campo.
  expect(login_page.field_email.value).to eql(email)
end

When(/^preencher o campo senha\.$/) do
  password = $pass[0]
  login_page.field_pass.set password
  # valida o preenchimento do campo.
  expect(login_page.field_pass.value).to eql(password)
end

When(/^validar o acessar do usuario\.$/) do
  full_name = $first_names[0] + " " + $last_names[0]
  name = full_name.split(' ')
  login_page.main_menu
  expect(login_page.main_menu_user.text.downcase).to  eql(name.first.downcase)
end

When(/^selecionar o proximo passo\.$/) do
  login_page.bt_submit.click
end

When(/^selecionar a opcao entrar\.$/) do
  login_page.bt_submit.click
end

When(/^clicar em Minha Conta apos o login\.$/) do
  login_page.main_menu.click
end

Quando(/^efetuar o logout\.$/) do
  login_page.page.execute_script("$('#track_logout').trigger('click');")
end

When(/^validar o logout efetuado com sucesso\.$/) do
  login_page.menu_account
  puts(login_page.menu_account.text)
end

Entao(/^conseguirei acessar a home.$/) do
  login_page.menu_account
end
