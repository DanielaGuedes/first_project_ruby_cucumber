## Getting Started ##

### Installing rbenv ###
To install rbenv type:
```shell
brew install rbenv
```

Add to ~/.bash_profile:
```shell
eval "$(rbenv init -)"
```

List all available versions:
```shell
rbenv install -l
```

Install a Ruby version:
```shell
rbenv install 2.3.1
```

Sets a local application-specific Ruby 2.3.1:
```shell
rbenv local 2.3.1
```

### Installing bundler ###
To install bundler type:
```shell
gem install bundler
```

### Windows Caveats ###

##### Preparing Internet Explorer #####

1. Check zoom level. It must be configured to 100%:

     ![Step 1](readme_img/step_1.png?raw=true "Check zoom level")

2. Disable 'Protected Mode' for all zones on Internet Options > Security:

    ![Step 2](readme_img/step_2.png?raw=true "Disable 'Protected Mode'")

##### Install FFI #####

To install FFI package type:
```shell
bundle install ffi --platform ruby
```

### Installing gems ###
To install gems type:
```shell
bundle install
```

### Drivers: ###
Install and include in PATH
- [chromedriver](https://sites.google.com/a/chromium.org/chromedriver/)
- [phantomjs](http://phantomjs.org/)
- [internetExplorerDriver](http://www.seleniumhq.org/download/)
- [Firefox Geckodriver](https://developer.mozilla.org/en-US/docs/Mozilla/QA/Marionette/WebDriver)

Install [Webdriver Safari extension](http://selenium-release.storage.googleapis.com/2.48/SafariDriver.safariextz).


### Run tests in DEV with Chrome###
Type this in the tests folder:
```shell
bundle exec cucumber
```

### Run tests in DEV with Firefox###
Type this in the tests folder:
```shell
bundle exec cucumber -p firefox -p dev
```

### Run tests in DEV with Safari###
Type this in the tests folder:
```shell
bundle exec cucumber -p safari -p dev
```

### Run tests in DEV with Poltergeist###
Type this in the tests folder:
```shell
bundle exec cucumber -p poltergeist -p dev
```

### Run tests in HMG with Chrome###
Type this in the tests folder:
```shell
bundle exec cucumber -p chrome -p hmg
```

### Run tests in HMG with Firefox###
Type this in the tests folder:
```shell
bundle exec cucumber -p firefox -p hmg
```

### Run tests in HMG with Safari###
Type this in the tests folder:
```shell
bundle exec cucumber -p safari -p hmg
```

### Run tests in HMG with Poltergeist###
Type this in the tests folder:
```shell
bundle exec cucumber -p poltergeist -p hmg
```

### HTML Report###
Type this in the tests folder:
```shell
bundle exec cucumber -p html_report
```

### Run with tags###
Type this in the tests folder:
```shell
bundle exec cucumber --tags @run
```

# Automação de testes funcionais do site da Youse:
- Cadastro de novo usuário;
- Login e Logout;
- Cotação de proposta via detalhes.

PARAMETROS NECESSÁRIOS PARA EXECUÇÃO:
USER => Nome Completo do Usuario.
EMAIL => Email do Usuário.
PASS => Senha para efetuar o login.
CPF => CPF para confirmação da cotação.
NASC => Data de Nacismento do Usuário.

TAGS:
@cadastro -> Executa o teste da feature Realizar Cadastro de Novos Usuários.
@login_logout -> executa teste da feature Realizar Testes de Login e Logout do Usuário.
@cotacao -> esecuta teste de feature Solicitação de Proposta de Seguros

EXEMPLO DE COMANDO LOGIN:
cucumber -t @login_logout USER='Nome do Usuário" EMAIL=user@dominio.com PASS=senha8caracteres

EXEMPLO DE COMANDO CADASTRO:
cucumber -t @cadastro USER='Nome do Usuário" EMAIL=user@dominio.com PASS=senha8caracteres

EXEMPLO DE COMANDO SOLICITAÇÃO DE PROPOSTA:
cucumber -t @cotacao USER='Nome do Usuário" EMAIL=user@dominio.com PASS=senha8caracteres NASC=03101980 CPF=18530249100

EXEMPLO DE COMANDO TESTAR TUDO:
cucumber USER='Nome do Usuário" EMAIL=user@dominio.com PASS=senha8caracteres NASC=03101980 CPF=18530249100

* Se passar os dados invalidos vai dar erro pois ele confere o CPF, NOME, NASCIMENTO.
