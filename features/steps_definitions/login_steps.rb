
Dado(/^que eu esteja no site da Youse "(.*)"\.$/) do |site|
  @context = LoginPage.new
  @context.visit(site)
end

E(/^clicar em Minha Conta\.$/) do
  @context.clicarMinhaContaOFF
end

Entao(/^conseguirei acessar a home.$/) do
  @context.garantirLoginHome
end

When(/^preencher o campo email\.$/) do
  email = ENV['EMAIL']
  result = @context.inputEmail email
  # valida o preenchimento do campo.
  expect(result.value).to eql(email)

end

When(/^preencher o campo senha\.$/) do
  password = ENV['PASS']
  result = @context.inputSenha password
  # valida o preenchimento do campo.
  expect(result.value).to eql(password)
end

When(/^validar o acessar do usuario\.$/) do
  user = ENV['USER']
  result = @context.verified_main_menu
  puts(result.text)
  # Valida o menu de usuario.
  expect(result.text).to  end_with(user)

end

When(/^selecionar o proximo passo\.$/) do
  @context.clicarProsseguir
end

When(/^selecionar a opcao entrar\.$/) do
  @context.clicarProsseguir
end

When(/^clicar em Minha Conta apos o login\.$/) do
  @context.selecionaMenu
end

When(/^efetuar o logout\.$/) do
  @context.clicarSair
end

When(/^validar o logout efetuado com sucesso\.$/) do
  @context.verified_logout
end