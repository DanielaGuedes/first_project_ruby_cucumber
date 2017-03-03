require 'json'

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

Entao(/^terei acesso à aba fale sobre seu carro\.$/) do |my_data|
	@data = JSON.parse my_data
	{
	:carro => data['carro'],
	:modelo => data['modelo'],
	:ano_modelo => data['2004'],
	:versao => data['versao'],

	:uso => data['uso'],
	:ja_tenho => data['ja_tenho'],
	:cep => data['cep'],
	:sexo => data['sexo'],

	:nasci_em => data['nasci_em'],
	:estado_civil => data['estado_civil'],
	:confimacao => data['confimacao'],
	:contratar_cobertura => data['contratar_cobertura'],
	:sinistro => data['contratar_cobertura']
	}

end
