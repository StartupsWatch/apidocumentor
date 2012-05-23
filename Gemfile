source 'https://rubygems.org'

# App
gem 'rails', '3.2.3'

# Db
gem 'mysql2'

# UI
gem 'jquery-rails'
gem "nested_form", :git => "git://github.com/ryanb/nested_form.git"
gem 'twitter-bootstrap-rails', '1.4.3'

# Assets
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer', :platform => :ruby
  gem 'uglifier', '>= 1.0.3'
end

# Development
group :development do
  gem 'sqlite3'
  gem 'thin'
  gem 'capistrano'
end

# Production
group :production do
  gem 'puma'
  gem 'unicorn'
end

# Test
group :test do
  # Pretty printed test output
  gem 'turn', '~> 0.8.3', :require => false
  gem 'sqlite3'
end
