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
    Entao preencha os as informacoes com os dados is dados.
		"""
	   {
	      'carro': 'CHEVROLET',
	      'modelo': 'CORSA',
				'caro': 'CHEVROLET',
	      'modelo': 'CORSA',
				'ano_modelo': '2004',
	      'versao': 'CORSA SEDAN MAXX 1.0 / 1.0 FLEXPOWER 8V 4P (Gasolina / Flex)',
				'uso': 'Particular',
	      'ja_tenho': 'já estou utilizando',
				'cep': '82520800',
				'sexo': 'Masculino',
				'nasci_em': '03101980',
				'estado_civil ': 'Solteiro(a)',
				'confimacao': 'sou',
				'contratar_cobertura': 'Desejo',
				'sinistro': 'nunca tive',
	    }
	  """
