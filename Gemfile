source 'https://rubygems.org'

gem 'rails', '3.2.11'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'rails3-generators' # for factory_girl_rails and simple_form
  
  gem 'therubyracer', '0.10.2', :platforms => :ruby
end

group :test do
  gem 'cucumber-rails', require: false
  gem 'capybara'
  gem 'database_cleaner'
end

group :test, :development do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'rspec-instafail'
  gem 'rb-fsevent'
  gem 'growl'
  gem 'pry'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'ffaker'
  gem 'capybara'
  gem 'guard-spork'
  gem 'guard-bundler'
  gem 'guard-rspec'
  gem 'guard-migrate'
end

gem 'pg', :group => :production

gem 'jquery-rails'
gem 'haml-rails'
gem 'simple_form'
gem 'bootstrap-sass'
gem 'devise'
gem 'cancan'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
