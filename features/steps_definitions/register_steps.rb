context = RegisterPage.new

Dado(/^selecionar a opcao cadastra-se e preencher os dados\.$/) do
  context.cadastrar.click
  steps %Q{
      "E preencher o campo nome.
      E preencher o campo user email.
      E preencher o campo user senha.
      E preencher o campo repetir senha.
    }
end

Dado(/^preencher o campo nome\.$/) do
  user = $first_names[0] + " " + $last_names[0]
  context.user.set user
end

When(/^preencher o campo user email\.$/) do
  email = $emails[0]
  context.user_email.set email
  # valida o preenchimento do campo.
  expect(context.user_email.value).to eql(email)
end

When(/^preencher o campo user senha\.$/) do
  password = $pass[0]
  context.user_pass.set password
  # valida o preenchimento do campo.
  expect(context.user_pass.value).to eql(password)
end

Dado(/^preencher o campo repetir senha\.$/) do
  password = $pass[0]
  context.input_pass_confirm.set password
end

Dado(/^enviar o cadastro realizado\.$/) do
  context.bt_submit.click
end
