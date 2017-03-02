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
    E clicar em Escolher Coberturas
    Entao terei acesso à aba de coberturas
		|estado   |valor  |apelido      |
    |São Paulo|200    |King    		  |
