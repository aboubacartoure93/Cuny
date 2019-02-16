source 'https://rubygems.org'
gem 'rails', '5.1.4'
#gem 'rails', '~> 5.2', '>= 5.2.1'
gem'devise' 
gem "therubyracer"
# gem 'less-rails-bootstrap', '~> 3.3', '>= 3.3.5.0'
gem 'bootstrap-sass', '~> 3.3.5'
#gem 'sprockets', '3.6.3'
# gem 'sprockets', '~> 3.7', '>= 3.7.1'
gem 'sprockets', '~> 3.0'
#gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "twitter-bootstrap-rails"
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'

gem 'vider', github: 'wazery/vider'
# Use sqlite3 as the database for Active Record
gem 'sass-rails', '~> 5.0'



gem 'mongoid', '~> 6.1.0'
#gem 'sendgrid-ruby'
#gem 'sendgrid-ruby'
# Use SCSS for stylesheets
#gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
# gem 'coffee-rails', '~> 4.1.0'
gem 'coffee-rails', '~> 4.2', '>= 4.2.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem "paperclip", "~> 5.0.0"

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem "mini_magick"

gem 'searchkick'

gem "bulma-rails", "~> 0.7.2"

gem 'will_paginate'
gem 'api-pagination', '~> 4.8', '>= 4.8.1'
gem 'will_paginate-bootstrap', '~> 1.0', '>= 1.0.1'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'private_pub'
gem 'thin'
# Use Unicorn as the app server
# gem 'unicorn'





# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'better_errors'
  gem 'guard'
  gem 'guard-livereload'
  gem 'binding_of_caller', '~> 0.7.2'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'sqlite3', '~> 1.3', '>= 1.3.11'
  gem 'rspec-rails', '~> 3.8'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 3.0'
  gem 'rspec-rails', '~> 3.8'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
  gem 'capistrano', '~> 3.7', '>= 3.7.1'
  gem 'capistrano-rails', '~> 1.2'
  gem 'capistrano-passenger', '~> 0.2.0'
  gem 'capistrano-rbenv', '~> 2.1'
  #gem 'pg', '~> 0.18'
  gem 'pg', '~> 0.18.4'
end
gem 'rails_12factor', group: :production

ruby "2.4.1"