Dado(/^selecionar a opcao cadastra\-se\.$/) do
  @context = RegisterPage.new
  @context.cadastrar.click
end

Dado(/^preencher o campo nome\.$/) do
  user = ENV['USER']
  @context.user.set user
end

When(/^preencher o campo user email\.$/) do
  email = ENV['EMAIL']
  @context.user_email.set email
  # valida o preenchimento do campo.
  expect(@context.user_email.value).to eql(email)
end

When(/^preencher o campo user senha\.$/) do
  password = ENV['PASS']
  @context.user_pass.set password
  # valida o preenchimento do campo.
  expect(@context.user_pass.value).to eql(password)
end

Dado(/^preencher o campo repetir senha\.$/) do
  password = ENV['PASS']
  @context.input_pass_confirm.set password
end

Dado(/^enviar o cadastro realizado\.$/) do
    @context.bt_submit.click
end
