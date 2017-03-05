require 'capybara'
require 'capybara/cucumber'
require 'cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'yaml'
require_relative  'helper.rb'
require 'rspec/autorun'

BROWSER = ENV['BROWSER']
puts(BROWSER)
helps = Helper.new
PATH = helps.get_os
puts(PATH)

Capybara.register_driver :selenium do |app|
  Capybara.default_max_wait_time = 60
  if BROWSER.eql?('chrome')
    Capybara::Selenium::Driver.new(app,
                                   :browser => :chrome,
                                   :driver_path => "#{PATH}chromedriver",
                                   :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
                                       'chromeOptions' => {
                                           'args' => [ "--start-maximized" ]
                                       }
                                   )

    )
  elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(app, :browser => :firefox,
                                   :driver_path => "#{PATH}geckodriver.exe")
  elsif BROWSER.eql?('internet_explorer')
    Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
  elsif BROWSER.eql?('safari')
    Capybara::Selenium::Driver.new(app, :browser => :safari)
  end
end
