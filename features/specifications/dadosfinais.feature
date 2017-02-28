# language: pt
Funcionalidade: Dadosfinais

Como usuário já logado na minha conta 
Desejo preencher os dados finais do formulário  
Para que eu consiga finalizar o contrato do seguro

     
Esquema do Cenario: Preencher Dados do Imóvel

    Dado que eu já tenha selecionado as opções de coberturas 
    Quando eu preencher os dados do imóvel "<pessoa>" "<proprietario>" "<cep>" "<rua>" "<numero>" "<complemento>" "<bairro>" "<imovel>"
    E clicar em Preencher Dados Pessoais
    Entao terei acesso ao último formulário

Exemplos:
    |pessoa         |proprietario      |cep       |rua                               |numero      |complemento |bairro      |imovel     |
    |pra mim        |sou               |05037-001 |Rua Francisco Luis de Sousa Junior|99          |99A         |Agua Branca |não possui nenhuma dessas características|


Esquema do Cenario: Preencher Dados Pessoais

    Dado que eu já tenha preenchido os dados do imóvel 
    Quando eu preencher os dados pessoais "<nome>" "<sexo>" "<cpf>" "<nascimento>" "<pais>" "<paisMoradia>" "<profissao>" "<renda>" "<enderecoCorrespondencia>" 

    E clicar em Pagamento
    Entao terei acesso à tela de pagamento

Exemplos:
    |nome                          |sexo              |cpf          |nascimento       |pais        |paisMoradia |profissao |renda      |enderecoCorrespondencia|cepOutro|ruaOutro|numeroOutro|complementoOutro|bairroOutro 
    |Priscila Beltrami Formaggio   |Masculino         |37323676819  |01/08/1988       |Brasil      |Brasil      |Analista de desenvolvimento de sistemas| De R$2.500,01 a  R$4.500,00    |é  |||||| 
