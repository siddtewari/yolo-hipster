source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'jquery-rails'
gem 'clearance', '1.0.0.rc7'
gem 'paperclip'
gem 'heroku'

group :production, :staging do
	gem 'pg'
	gem 'thin'
end

group :development, :test do
	gem 'rspec-rails'
	gem 'factory_girl_rails'
	gem 'pry'
	gem 'sqlite3'
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

