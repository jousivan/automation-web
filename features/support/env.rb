require 'awesome_print'
require 'capybara'
require 'capybara/cucumber'
require 'httparty'
require 'selenium-webdriver'
require 'site_prism'

CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV['ENV_TYPE']}.yml"))

case ENV['BROWSER']
when 'chrome'
  @driver = :selenium_chrome
when 'firefox'
  @driver = :selenium
end

Capybara.configure do |config|
  config.default_driver = @driver
  config.app_host = 'https://www.fleury.com.br'
  config.default_max_wait_time = 5
  ap "Application - #{CONFIG['url']}"
  ap "Environment - #{ENV['ENV_TYPE']}"
end

system("rm #{File.join(Dir.pwd + '/log/screenshots/*.png')}")