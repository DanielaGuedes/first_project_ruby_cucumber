
Dado(/^que eu esteja no site da Youse "(.*)"\.$/) do |site|
  @context = LoginPage.new
  @context.visit(site)
end

E(/^clicar em Minha Conta\.$/) do
  @context.menu_account.click
end

When(/^preencher o campo email\.$/) do
  email = ENV['EMAIL']
  @context.field_email.set email
  # valida o preenchimento do campo.
  expect(@context.field_email.value).to eql(email)
end

When(/^preencher o campo senha\.$/) do
  password = ENV['PASS']
  @context.field_pass.set password
  # valida o preenchimento do campo.
  expect(@context.field_pass.value).to eql(password)
end

When(/^validar o acessar do usuario\.$/) do
  user = ENV['USER']
  # Valida o menu de usuario.
  puts(user)
  expect(@context.main_menu.text).to  end_with(user)
end

When(/^selecionar o proximo passo\.$/) do
  @context.bt_submit.click
end

When(/^selecionar a opcao entrar\.$/) do
  @context.bt_submit.click
end

When(/^clicar em Minha Conta apos o login\.$/) do
  @context.main_menu.click
end

Quando(/^efetuar o logout\.$/) do
  @context.main_menu.click
  @context.logout_menu.click
end

When(/^validar o logout efetuado com sucesso\.$/) do
  @context.menu_account
end

Entao(/^conseguirei acessar a home.$/) do
  @context.menu_account
end
