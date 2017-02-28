
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
  expect(result.value).to eql(password)
end

When(/^validar o acessar do usuario\.$/) do
  user_elem = @context.verified_main_menu
  #expect(user_elem).to have_css(page.main_menu :data-email => 'reiload@gmail.com')

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