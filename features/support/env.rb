require 'capybara'
require 'cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'yaml'

BROWSER = ENV['BROWSER']
puts(BROWSER)
USER = ENV['USER']
puts(USER)

Capybara.register_driver :selenium do |app|
  Capybara.default_max_wait_time = 60
  if BROWSER.eql?('chrome')
    Capybara::Selenium::Driver.new(app,
                                   :browser => :chrome,
                                   :driver_path => "/home/reiload/drivers/chromedriver",
                                   :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
                                       'chromeOptions' => {
                                           'args' => [ "--start-maximized" ]
                                       }
                                   )

    )
  elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(app, :browser => :firefox,
                                   :driver_path => "C:\\drivers\\geckodriver.exe")
  elsif BROWSER.eql?('internet_explorer')
    Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
  elsif BROWSER.eql?('safari')
    Capybara::Selenium::Driver.new(app, :browser => :safari)
  end
end
