source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'
# Basic settings

gem 'rails', '~> 5.2.3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '4.2.2'

gem 'jquery-rails'
gem 'turbolinks', '5.0.1'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

# configuration
gem "figaro"

# file
gem 'carrierwave'
gem 'mini_magick'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment

# Assets
gem 'bootstrap-sass', '~> 3.3.5'
gem 'font-awesome-sass', '~> 4.4.0'
gem 'autoprefixer-rails'

# Slim
gem 'slim'
gem 'slim-rails'

# Pagination
gem 'kaminari'

# Form
gem 'simple_form'

# Authorization & Authentication
gem 'bcrypt'
gem 'devise'
gem 'cancancan'

# I18n
gem 'rails-i18n'
gem 'json', '~> 1.8', '>= 1.8.3'

gem 'bootstrap-datepicker-rails'
gem 'settingslogic'

gem 'momentjs-rails'
gem 'fullcalendar-rails', '~> 2.6'

gem 'highline'
gem 'rails-erd'

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails'
  gem 'capybara'
  #gem 'factory_girl_rails'
  gem 'faker'
  # gem 'heroku'
end

group :development do
  gem 'web-console', '~> 3.0'
  gem 'spring'
  gem 'better_errors'
  gem 'sqlite3'
end

group :production do
  gem 'rails_12factor'
  gem 'pg', '0.20.0'
end

group :development do
  gem 'capistrano-rails'
end
