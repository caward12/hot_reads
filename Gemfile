source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'rack-cors', :require => 'rack/cors'


group :development, :test do
  gem 'byebug'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'launchy'
  gem 'pry'
  gem 'simplecov', :require => false
  gem 'spring'
  gem 'database_cleaner'
  gem 'better_errors'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'selenium-webdriver', '~> 2.53.4'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
