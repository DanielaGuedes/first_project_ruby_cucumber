# language: pt
@cotacao
Funcionalidade: Cotacao

Como usuário já logado na minha conta
Desejo preencher os dados da cotação de seguro residencial
Para que eu consiga contratar o serviço

Contexto: Login

	Dado que eu esteja no site da Youse "https://www.youse.com.br".
	E clicar em Minha Conta.
	Quando preencher o campo email.
	E selecionar o proximo passo.
	E preencher o campo senha.
	E selecionar a opcao entrar.
	Então validar o acessar do usuario.

Cenario: Preencher dados iniciais

    Dado que eu esteja no site da Youse "https://www.youse.com.br".
    E clicar em Cotar Seguro Auto.
    E em seguida clicar no botão Auto.
    Quando eu preencher os dados iniciais "<11999999999>"
		E selecionar seguir com o proximo passo.
    Entao preencha as informacoes com os dados.
		| carro   | CHEVROLET |
		| modelo  | CORSA     |
		| ano_modelo | 2004   |
		| versao   | CORSA SEDAN MAXX 1.0 / 1.0 FLEXPOWER 8V 4P (Gasolina / Flex)|
		| uso      | private |
		| ja_tenho | true |
		| cep				| 82520800 |
		| sexo     | male |
		| estado_civil | single |
		| confimacao   | true |
		| contratar_cobertura | true |
		| sinistro | 0 |
		E selecionar seguir com o proximo passo.
		Entao validar a cobertura padrao "4 Coberturas".
		E selecionar seguir com o proximo passo.
		Entao validar a assistencia padrao "0 Assistências".
		E selecionar seguir com o proximo passo.
		Entao preencher as informacoes sobre a pessoa com os dados.
		| naci_no | BR   |
		| profissao   | Analista de desenvolvimento de sistemas |
		| renda      | Band2 |
		| cep				| 82520800 |
		| rua     | Rua Amadeu Assad Yassim |
		| numero | 92  |
		| complemento | AP 000 |
		| bairro   | Bacacheri |
		E selecionar seguir com o proximo passo.
		Entao preencher as informacoes sobre o veiculo com os dados.
		| placa   | jxi5240 |
		| adaptacoes  | false     |
		| blindado | false   |
		E selecionar seguir com o proximo passo.
		Entao validar os campos da pagina de pagamento.
