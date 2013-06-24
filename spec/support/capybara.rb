require 'capybara/rspec'

RSpec.configure do |config|
  config.include Capybara::DSL
  Capybara.javascript_driver = :webkit
end
