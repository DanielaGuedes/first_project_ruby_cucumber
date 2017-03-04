
Dado(/^clicar em Cotar Seguro Auto\.$/) do
  @cotacao = CotacaoPage.new
	@cotacao.link_saiba_mais.click
end

Dado(/^em seguida clicar no botão Auto\.$/) do
  @cotacao.bt_quotation.click
	@cotacao.nome
end

Quando(/^eu preencher os dados iniciais "([^"]*)"$/) do |phone_number|
	user_name = ENV['USER']
	email = ENV['EMAIL']
  @cotacao.nome.set user_name
	@cotacao.phone.set phone_number
	@cotacao.email.set email
	puts "Dados iniciais preenchido"
end

Quando(/^selecionar seguir com o proximo passo\.$/) do
    @cotacao.bt_submit.click
end

Entao(/^preencha os as informacoes com os dados\.$/) do |table|

  data = table.rows_hash
  carro = data['carro']
  modelo = data['modelo']
  ano_modelo = data['ano_modelo']
  versao = data['versao']
  @cotacao.carro.find("option[value='#{carro}']").select_option
  @cotacao.modelo.find("option[value='#{modelo}']").select_option
  @cotacao.ano_modelo.find("option[value='#{ano_modelo}']").select_option
  @cotacao.versao.find("option[value='#{versao}']").select_option
end
