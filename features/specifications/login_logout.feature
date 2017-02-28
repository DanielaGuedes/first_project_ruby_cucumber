# language: pt
Funcionalidade: Login na Youse

  Como usuário novo e já cadastrado
  Desejo me logar na minha conta
  Para poder acessar a cotação de seguros

  Cenario: Login

    Dado que eu esteja no site da Youse "https://www.youse.com.br".
    E clicar em Minha Conta.
    Quando preencher o campo email.
    E selecionar o proximo passo.
    E preencher o campo senha.
    E selecionar a opcao entrar.
    Então validar o acessar do usuario.


  # Como usuario logado
  # Desejo fazer o logout na minha conta

#  @Login
#  Cenario: Logout
#
#    Dado que eu esteja no site da Youse "https://www.youse.com.br".
#    Quando clicar em Minha Conta apos o login.
#    E efetuar o logout.
#    Então validar o logout efetuado com sucesso.

