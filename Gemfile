source 'https://rubygems.org'
ruby ENV['CUSTOM_RUBY_VERSION'] || '2.3.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0'
# Use sqlite3 as the database for Active Record

# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development




gem "rails-erd"
gem 'bootstrap-sass'
gem "devise"
gem "simple_form"
gem "font-awesome-rails"
gem "carrierwave"
gem "will_paginate"
gem 'will_paginate-bootstrap'
gem 'ransack'
gem 'mini_magick'
gem 'figaro'
gem 'fog-aws'
gem 'letter_opener',group: :development
gem 'aasm'
gem 'seo_helper'
gem 'gmaps4rails'
gem 'underscore-rails'
gem 'rqrcode'

gem "select2-rails"
gem 'bootstrap-datepicker-rails'

gem "rails-i18n"
gem "devise-i18n"
group :production do
  gem 'pg'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'sqlite3'

end
group :development do
  gem "capistrano", "~> 3.4"
  gem "capistrano-rvm"
  gem "capistrano-rails"
  gem "capistrano-passenger"
end
group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # gem 'spring'
  # gem 'spring-watcher-listen', '~> 2.0.0'

  #用来测速
  gem 'rack-mini-profiler'

  #用来检测数据库查询的
  # notify you when you should add eager loading (N+1 queries),
  #when you're using eager loading that isn't necessary and
  #when you should use counter cache.
  gem 'bullet'
  gem "uniform_notifier"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
