source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.0.rc1'
gem 'puma', '~> 3.7'
gem 'sass-rails', github: "rails/sass-rails"

# Use PostgreSQL for database
gem 'pg', '~> 0.18'

gem 'uglifier', '>= 1.3.0'
# gem 'therubyracer', platforms: :ruby

gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
# gem 'redis', '~> 3.0'

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7', platforms: :ruby

# Windows dependency
gem 'coffee-script-source', '1.8.0'
gem 'execjs'

# (Will probably use heroku)
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'carrierwave', '~> 1.0'
gem 'devise'
gem 'figaro'
gem 'bootstrap-sass'

# For the access map
gem 'gmaps4rails'
gem 'underscore-rails'
gem 'jquery-rails'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13.0'
  gem 'selenium-webdriver'
  gem 'brakeman', require: false
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'database_cleaner'
  gem 'better_errors'
end

gem 'wdm', '>= 0.1.0' if Gem.win_platform?

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

