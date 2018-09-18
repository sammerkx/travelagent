source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.1'


gem 'rails', '~> 5.2.1'

#reference to sqlite3
#gem 'sqlite3'

gem 'puma', '~> 3.11'

gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'


gem 'coffee-rails', '~> 4.2'

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.5'





gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
 gem 'rspec-rails'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'faker'
   gem 'sqlite3'
end

group :development do
  
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
 
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
 gem 'cucumber-rails', :require=>false
gem 'database_cleaner'

  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'factory_bot'
   gem 'chromedriver-helper'
end


group :production do

  gem 'pg'

end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


gem 'jquery-rails'
