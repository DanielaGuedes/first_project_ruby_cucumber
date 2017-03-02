# # language: pt
# Funcionalidade: Cobertura
#
# Como usuário já logado na minha conta
# Desejo escolher as coberturas
# Para que eu consiga ter uma estimativa
#
#
# Esquema do Cenario: Selecionar coberturas
#
#     Dado que eu esteja na aba de coberturas
#     Quando eu escolher as coberturas "<valorCobertura>" "<dano>" "<furto>" "<responsabilidade>" "<quebraVidro>" "<vendaval>" "<perda>" "<veiculos>" "<tumulto>"
#
#     E clicar em Proximo Passo
#     Entao terei acesso à próxima aba de sugestões
#
# Exemplos:
#     |valorCobertura |dano  |furto |responsabilidade |quebraVidro |vendaval |perda |veiculos |tumulto |
#     |110.000        |2.200 |1.100 |                 |1.100       |1.600    |      |         |        |
#
#
#
#  Esquema do Cenario: Selecionar sugestoes de coberturas
#
#     Dado que eu esteja na aba de sugestões
#     Quando eu escolher as sugestões de coberturas "<residencial>" "<eletrodomesticos>" "<lar>" "<cao>" "<pet>" "<criancas>" "<idosos>" "<computador>" "<acessibilidade>" "<sustentabilidade>"
#
#     E clicar em Preencher Dados do Imóvel
#     Entao terei acesso à próxima aba do imóvel
#
# Exemplos:
#     |residencial    |eletrodomesticos  |lar   |cao              |pet         |criancas |idosos |computador |acessibilidade |sustentabilidade|
#     |true           |true              |true  |true             |true        |false    |false  | false     |false          | false          |
#
