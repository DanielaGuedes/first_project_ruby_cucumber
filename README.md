Meu Primeiro projeto de Automação usando Ruby, Capybara, SitePrism, usando o conceito de Pages Object. Não temos nenhum Sleep fixo no projeto, tudo é feito de forma dinâmica, alguns parâmetros são passado via cucumber e outro estão na tabela na feature, não utilizamos xpath nesse projeto somente ID e CSS Selector, como boa prática procurei deixar o projeto relativamente simples.


### Instalação das Gems é necessário instalar primeiro o bundler ###
To install bundler type:
```shell
gem install bundler
```

##### Gems que vão ser instaladas #####

Gems necessário para rodar os testes:
source 'https://rubygems.org'

gem 'capybara'
gem 'cucumber'
gem 'rake'
gem 'selenium-webdriver'
gem 'site_prism'
gem 'rspec'
gem 'os'
gem 'rspec-retry'

### Installing gems ###
Primeiro Passo entrar na pasta do projeto via cmd ou shell e instalar as gems com o comando:
```shell
bundle install
```

### Drivers: ###
Baixa os drivers e colocar no c: da maquina:
https://www.dropbox.com/s/midwh10jy8p7e6o/drivers.zip?dl=0


# Automação de testes funcionais do site da Youse: #
- Cadastro de novo usuário;
- Login e Logout;
- Cotação de proposta via detalhes.

# PARAMETROS NECESSÁRIOS PARA EXECUÇÃO: #
USER => Nome Completo do Usuario.
EMAIL => Email do Usuário.
PASS => Senha para efetuar o login.
CPF => CPF para confirmação da cotação.
NASC => Data de Nacismento do Usuário.

# TAGS: #
@cadastro -> Executa o teste da feature Realizar Cadastro de Novos Usuários.
@login_logout -> Executa o teste da feature Realizar Testes de Login e Logout do Usuário.
@cotacao -> Executa o teste de feature Solicitação de Proposta de Seguros

EXEMPLO DE COMANDO LOGIN:
```shell
cucumber -t @login_logout USER='Nome do Usuário" EMAIL=user@dominio.com PASS=senha8caracteres
```
EXEMPLO DE COMANDO CADASTRO:
```shell
cucumber -t @cadastro USER='Nome do Usuário" EMAIL=user@dominio.com PASS=senha8caracteres
```
EXEMPLO DE COMANDO SOLICITAÇÃO DE PROPOSTA:
```shell
cucumber -t @cotacao USER='Nome do Usuário" EMAIL=user@dominio.com PASS=senha8caracteres NASC=03101980 CPF=18530249100
```
EXEMPLO DE COMANDO TESTAR TUDO:
```shell
cucumber USER='Nome do Usuário" EMAIL=user@dominio.com PASS=senha8caracteres NASC=03101980 CPF=18530249100
```

### HTML Report###
Para adicionar o report adicione o comando abaixo no cucumber:
```shell
--format progress --format html --out=features_report.html
```
* Se passar os dados invalidos vai dar erro pois ele confere o CPF, NOME, NASCIMENTO.


