Meu Primeiro projeto de Automação usando Ruby, Capybara, SitePrism, usando o conceito de Pages Object. Não temos nenhum Sleep fixo no projeto, tudo é feito de forma dinâmica, alguns parâmetros são passado via o comando do cucumber no cmd ou shell e os outros estão na tabela na feature, não utilizamos xpath nesse projeto somente ID e CSS Selector, como boa prática procurei deixar o projeto relativamente simples. 
<br>Apesar de o projeto não ter nenhum sleep fixo e somente ID, Class e CSS, não gostei muito do projeto, tenho que passar um monte de paramêtro via cucumber, parece coisa de amador. Por isso criei uma tag 1.0, e vou trabalhar na tag 2.0 que vai passar os dados todos pelo banco e se quiser sobrescrever os dados manda via paramêtro.


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
gem 'rspec-retry'

### Installing gems ###
Primeiro Passo entrar na pasta do projeto via cmd ou shell e instalar as gems com o comando:
```shell
bundle install
```

### Drivers: ###
Baixa os drivers e colocar no c: da maquina:
https://www.dropbox.com/s/midwh10jy8p7e6o/drivers.zip?dl=0


### Automação de testes funcionais do site da Youse: ###
- Cadastro de novo usuário;
- Login e Logout;
- Cotação de proposta via detalhes.

### PARAMETROS NECESSÁRIOS PARA EXECUÇÃO: ###
USER => Nome Completo do Usuario.<br>
EMAIL => Email do Usuário.<br>
PASS => Senha para efetuar o login.<br>
CPF => CPF para confirmação da cotação.<br>
NASC => Data de Nacismento do Usuário.

### TAGS: ###
@cadastro -> Executa o teste da feature Realizar Cadastro de Novos Usuários.<br>
@login_logout -> Executa o teste da feature Realizar Testes de Login e Logout do Usuário.<br>
@cotacao -> Executa o teste de feature Solicitação de Proposta de Seguros.

EXEMPLO DE COMANDO LOGIN:
```shell
cucumber -t @login_logout BROWSER=chrome USER="Nome do Usuário" EMAIL=user@dominio.com PASS=senha8caracteres
```
EXEMPLO DE COMANDO CADASTRO:
```shell
cucumber -t @cadastro BROWSER=chrome USER="Nome do Usuário" EMAIL=user@dominio.com PASS=senha8caracteres
```
EXEMPLO DE COMANDO SOLICITAÇÃO DE PROPOSTA:
```shell
cucumber -t @cotacao BROWSER=chrome USER="Nome do Usuário" EMAIL=user@dominio.com PASS=senha8caracteres NASC=03101980 CPF=18530249100
```
EXEMPLO DE COMANDO TESTAR TUDO:
```shell
cucumber USER="Nome do Usuário" EMAIL=user@dominio.com PASS=senha8caracteres NASC=03101980 CPF=18530249100
```

### Ambiente Testado Windows 10 x64  e Linux Mint x64 ###
### Versões de Browser:#
firefox versão: 51.0<br>
chrome versão: 56.0

### HTML Report###
Para adicionar o report adicione o comando abaixo no final dos comandos, esse é o report HTML:
```shell
--format html --out=features_report.html
```
* Se passar os dados invalidos vai dar erro pois ele confere o CPF, NOME, NASCIMENTO.

# DataBase com dados secretos
```shell
CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `nome` varchar(145) NOT NULL,
  `sobrenome` varchar(145) DEFAULT NULL,
  `login` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `perfil` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
```

Rodando o report e todas as features.
```shell
cucumber BROWSER=chrome USER=Reiload EMAIL=rei12345@dominio.com PASS=senha8caracteres NASC=03101980 CPF=18530249100 --format html --out=features_report.html
```
