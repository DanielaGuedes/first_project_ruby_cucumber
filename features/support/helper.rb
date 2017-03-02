# encoding: utf-8
# !/usr/bin/env ruby
# require 'fileutils'
# class Helper
#
#   def take_screenshot(name_file, folder='screenshots/test_screens')
#     file = "#{folder}/#{name_file}.png"
#     FileUtils.mkdir_p(folder) unless File.exists?(folder)
#     if BROWSER.eql?('poltergeist')
#       Capybara.page.save_screenshot(file)
#     else
#       Capybara.page.driver.browser.save_screenshot(file)
#     end
#   end
# end
