source 'https://rubygems.org'

gem 'rails', '3.2.13'

gem 'pg'
gem 'thin'
gem 'joosy'
gem 'jquery-rails'
gem 'haml-rails'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  gem 'anjlab-bootstrap-rails', github: 'anjlab/bootstrap-rails', require: 'bootstrap-rails'
  gem 'font-awesome-sass-rails'
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'pry'
  gem 'pry-nav'
end

group :test do
  gem 'database_cleaner'
  gem 'capybara'
  gem 'capybara-webkit'
end
