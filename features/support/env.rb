require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'rspec/retry'

# Pre-requisito copiar os drivers pra dentro da pasta bin do ruby.
# Passar o browser por parametro.
BROWSER = ENV['BROWSER']
puts(BROWSER)

# cria a instancia do chrome.
Capybara.register_driver :selenium do |app|
  if BROWSER.eql?('chrome')
    Capybara::Selenium::Driver.new(app,
                                   :browser => :chrome,
                                   :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
                                       'chromeOptions' => {
                                           'args' => [ "--start-maximized" ]
                                       }
                                   )

    )
  elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(app, :browser => :firefox)
  elsif BROWSER.eql?('internet_explorer')
    Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
  elsif BROWSER.eql?('safari')
    Capybara::Selenium::Driver.new(app, :browser => :safari)
  end
end


RSpec.configure do |config|
  # show retry status in spec process
  config.verbose_retry = true
  # Try twice (retry once)
  config.default_retry_count = 3
  # Only retry when Selenium raises Net::ReadTimeout
  config.exceptions_to_retry = [Net::ReadTimeout]
end

# Alterando algumas configurações padrao.
Capybara.configure do |config|
  # Deixando o site como padrao podemos deixar o visit em branco.
  # ou somente colocar do barra em diante, visit '/home'.
  config.app_host = "https://www.youse.com.br"
  # timeout maximo das esperas.
  config.default_max_wait_time = 30
end