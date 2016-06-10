require 'rspec'
#require 'rspec/rails'
require 'capybara'
require 'capybara/rspec'
#require 'capybara/rails'
require 'capybara/dsl'
require 'capybara/poltergeist'

RSpec.configure do |config|
  config.include Capybara::DSL
end