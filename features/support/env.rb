#$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '../../', 'page_objects'))
require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'capybara/dsl'
require 'capybara/helpers'
require 'rspec'
require 'pry'
require 'require_all'
require 'waitutil'
require 'yaml'

require_all 'page_objects/**/*.rb'

ENV['TEST_ENV'] ||= 'springer'
project_root = File.expand_path('../..', __FILE__)
$BASE_URL = YAML.load_file(project_root + "/config/config.yml")[ENV['TEST_ENV']]['url']



Capybara.register_driver(:chrome)   { |app| Capybara::Selenium::Driver.new(app, :browser => :chrome) }
Capybara.register_driver(:firefox)  { |app| Capybara::Selenium::Driver.new(app, :browser => :firefox) }


Capybara.configure do |config|
  config.default_driver = :firefox
  Capybara.app_host = $BASE_URL
end
World(Capybara::DSL)
World(Capybara::RSpecMatchers)



