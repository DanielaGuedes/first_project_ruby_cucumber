
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

Entao(/^preencha as informacoes com os dados\.$/) do |table|

  data = table.rows_hash
  carro = data['carro']
  modelo = data['modelo']
  ano_modelo = data['ano_modelo']
  versao = data['versao']
  uso = data['uso']
  ja_tenho = data['ja_tenho']
  cep = data['cep']
  sexo = data['sexo']
  nasci_em = data['nasci_em']
  estado_civil = data['estado_civil']
  confimacao = data['confimacao']
  contratar_cobertura = data['contratar_cobertura']
  sinistro = data['sinistro']

  @cotacao.carro.all("option[value='#{carro}']")[1].select_option
  @cotacao.modelo.find("option[value='#{modelo}']").select_option
  @cotacao.ano_modelo.find("option[value='#{ano_modelo}']").select_option
  @cotacao.versao.find("option[value='#{versao}']").select_option
  @cotacao.uso.find("option[value='auto|#{uso}']").select_option
  @cotacao.tenho.find("option[value='#{ja_tenho}']").select_option

  @cotacao.cep.set cep
  @cotacao.sexo.find("option[value='#{sexo}']").select_option

  @cotacao.nascimento.set nasci_em
  @cotacao.estado_civil.find("option[value='#{estado_civil}']").select_option
  @cotacao.pessoa_mais_dirige.find("option[value='#{confimacao}']").select_option
  @cotacao.contratar_cobertura.find("option[value='#{contratar_cobertura}']").select_option
  @cotacao.sinistro.find("option[value='#{sinistro}']").select_option

end


Entao(/^validar a cobertura padrao "([^"]*)"\.$/) do |string|
@Coverages = CoveragesSelectionPage.new
@value_coverages = string.split(' ')
puts(@Coverages.quantidade_itens2.text)
puts(@Coverages.quantidade_itens_label.text)
expect(@Coverages.quantidade_itens2.text).to  eql(@value_coverages.first)
expect(@Coverages.quantidade_itens_label.text).to  eql(@value_coverages.last)
end

Entao(/^validar a assistencia padrao "([^"]*)"\.$/) do |string|
@Assistances = AssistancesPage.new
@value_assistances = string.split(' ')
puts(@Assistances.quantidade_coverages.text)
puts(@Assistances.quantidade_assistances.text)
puts(@Assistances.assistances_label.text)

expect(@Assistances.quantidade_coverages.text).to  eql(@value_coverages.first)
expect(@Assistances.quantidade_assistances.text).to  eql(@value_assistances.first)
expect(@Assistances.assistances_label.text).to  eql(@value_assistances.last)
end

Entao(/^preencher as informacoes sobre a pessoa com os dados\.$/) do |table|
  pending # Write code here that turns the phrase above into concrete actions
end
