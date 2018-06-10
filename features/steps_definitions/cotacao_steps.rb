cotacao = CotacaoPage.new
coverages = CoveragesSelectionPage.new
assistances = AssistancesPage.new
insured_person = InsuredPersonDataPage.new
vehicle_data = VehicleDataPage.new
payment_data = PaymentDataPage.new

Dado(/^clicar em Cotar Seguro Auto\.$/) do
  cotacao.link_saiba_mais.click
end

Dado(/^em seguida clicar no botão Auto\.$/) do
  cotacao.bt_quotation.click
  cotacao.nome
end

Quando(/^eu preencher os dados iniciais "([^"]*)"$/) do |phone_number|
  user_name = ENV['USER']
  email = ENV['EMAIL']
  cotacao.nome.set user_name
  cotacao.phone.set phone_number
  cotacao.email.set email
  puts "Dados iniciais preenchido"
end

Quando(/^selecionar seguir com o proximo passo\.$/) do
  cotacao.bt_submit.click
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
  nasci_em = ENV['NASC']
  estado_civil = data['estado_civil']
  confimacao = data['confimacao']
  contratar_cobertura = data['contratar_cobertura']
  sinistro = data['sinistro']

  cotacao.carro.all("option[value='#{carro}']")[1].select_option
  cotacao.modelo.find("option[value='#{modelo}']").select_option
  cotacao.ano_modelo.find("option[value='#{ano_modelo}']").select_option
  cotacao.versao.find("option[value='#{versao}']").select_option
  cotacao.uso.find("option[value='auto|#{uso}']").select_option
  cotacao.tenho.find("option[value='#{ja_tenho}']").select_option

  cotacao.cep.set cep
  cotacao.sexo.find("option[value='#{sexo}']").select_option

  cotacao.nascimento.set nasci_em
  cotacao.estado_civil.find("option[value='#{estado_civil}']").select_option
  cotacao.pessoa_mais_dirige.find("option[value='#{confimacao}']").select_option
  cotacao.contratar_cobertura.find("option[value='#{contratar_cobertura}']").select_option
  cotacao.sinistro.find("option[value='#{sinistro}']").select_option
end

Entao(/^validar a cobertura padrao "([^"]*)"\.$/) do |string|
  value_coverages = string.split(' ')
  puts(coverages.quantidade_itens2.text)
  puts(coverages.quantidade_itens_label.text)
  expect(coverages.quantidade_itens2.text).to eql(value_coverages.first)
  expect(coverages.quantidade_itens_label.text).to eql(value_coverages.last)
end

Entao(/^validar a assistencia padrao "([^"]*)"\.$/) do |string|

  value_assistances = string.split(' ')
  puts(assistances.quantidade_coverages.text)
  puts(assistances.quantidade_assistances.text)
  puts(assistances.assistances_label.text)

  expect(assistances.quantidade_coverages.text).to eql(value_coverages.first)
  expect(assistances.quantidade_assistances.text).to eql(value_assistances.first)
  expect(assistances.assistances_label.text).to eql(value_assistances.last)
end

Entao(/^preencher as informacoes sobre a pessoa com os dados\.$/) do |table|

  data = table.rows_hash
  full_name = ENV['USER']
  cpf = ENV['CPF']
  nacionalidade = data['naci_no']
  profissao = data['profissao']
  renda = data['renda']
  cep = data['cep']
  rua = data['rua']
  numero = data['numero']
  complemento = data['complemento']
  bairro = data['bairro']

  insured_person.full_name.set full_name
  insured_person.cpf.set cpf
  insured_person.nacionalidade.find("option[value='#{nacionalidade}']").select_option
  insured_person.profissao.click
  insured_person.profissao_input.set profissao
  insured_person.profissao_input.native.send_keys(:return)
  insured_person.renda.find("option[value='#{renda}']").select_option
  insured_person.cep.set cep
  insured_person.rua.set rua
  insured_person.number.set numero
  insured_person.complemento.set complemento
  insured_person.bairro.set bairro
end

Entao(/^preencher as informacoes sobre o veiculo com os dados\.$/) do |table|
  data = table.rows_hash
  placa = data['placa']
  adaptacoes = data['adaptacoes']
  blindado = data['blindado']
  vehicle_data.placa.set placa
  vehicle_data.adaptacoes.find("option[value='#{adaptacoes}']").select_option
  vehicle_data.blindado.find("option[value='#{blindado}']").select_option
end

Entao(/^validar os campos da pagina de pagamento\.$/) do
  payment_data.cartao_number
  payment_data.cartao_nome
  payment_data.cvc
end
