source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '3.2.12'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

gem 'bootstrap-sass', github: 'thomas-mcdonald/bootstrap-sass'


group :development, :test do 
	gem 'sqlite3'
end

group :production do
	gem 'pg'
    gem 'rails_12factor'
end