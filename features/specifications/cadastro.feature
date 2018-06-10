# language: pt
@cadastro
Funcionalidade: Cadastro de Usuario.

  Como usuario novo
  Desejo criar um cadastro na Youse
  Para poder contratar um seguro

  Cenario: Novo Cadastro

    Dado que eu esteja no site da Youse.
    E clicar em Minha Conta.
    E selecionar a opcao cadastra-se.
    E preencher o campo nome.
    E preencher o campo user email.
    E preencher o campo user senha.
    E preencher o campo repetir senha.
    E enviar o cadastro realizado.
    Então validar o acessar do usuario.
