# language: pt
Funcionalidade: Cadastro de usuario.

  Como usuario novo
  Desejo criar um cadastro na Youse
  Para poder contratar um seguro

  Esquema do Cenario: Novo Cadastro

    Dado que eu esteja na pagina de login.
    Quando eu clicar em Cadastre-se.
    E preencher o campo nome "<nome>".
    E preencher o campo email "<email>".
    E preencher o campo senha.
    E preencher o campo repetir senha.
    E enviar o cadastro realizado.
    Então validar o registro efetuado com sucesso.


    Exemplos:
      | nome                            | email             |
      | reinaldo mateus rossetti junior | reiload@gmail.com |
