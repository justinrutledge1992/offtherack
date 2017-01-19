source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.2'

gem 'aws-sdk', "~> 2.6"

# Use MiniMagick and Carrierwave for file handling
  #note: ImageMagick must be installed to use minimagick
gem 'mini_magick', "~> 4.6"
gem 'carrierwave', '>= 1.0.0.rc', '< 2.0'
gem 'fog', "~> 1.38"


# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass', '~> 3.3'
gem "jquery-scrollto-rails", "~> 1.4"
gem 'masonry-rails', "~> 0.2"
gem 'nprogress-rails', "~> 0.2"

# Adds vector-based icon libarary
gem 'font-awesome-sass'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~> 3.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Pagination
gem 'will_paginate',           '~> 3.0'
gem 'bootstrap-will_paginate', "~> 0.0"

# Use jquery as the JavaScript library
gem 'jquery-rails', "~> 4.2"

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', "~> 5.0"
gem 'jquery-turbolinks' # Fixes common problems turbolinks brings to JS code.

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.1'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1'

# HAML replaces HTML syntax
gem "haml-rails", "~> 0.9"

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Use sqlite3 in development
  gem 'sqlite3',     '~> 1.3'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', "~> 9.0"
end

group :development do
  # Use postgresql in production
  gem 'pg',             '~> 0.17'
  
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.3'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', "~> 2.0"
  
  # Removes all asset calls from server logs. Makes reading server terminal easier.
  gem 'quiet_assets', "~> 1.1"
  
  # For setting version numbers in gemfile. Use to avoid unexpected updates.
  gem 'pessimize', "~> 0.3"
end

group :production do
  gem 'pg',             '~> 0.17'
  gem 'rails_12factor', '~> 0.0'
  gem 'puma',           '~> 2.11'
end