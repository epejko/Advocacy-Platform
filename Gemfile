source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.10'
# Use sqlite3 as the database for Active Record
group :development, :test do # 
  gem 'sqlite3'
end
#Use postgres as the database for production
group :production do
  gem 'pg', '~> 0.18'
end
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use sprokets for asset pipeline
gem 'sprockets-rails', :require => 'sprockets/railtie'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'bootstrap',     '4.1.1'
gem 'material-sass', '4.1.1'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'



# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# Gem for heroku production
gem 'rails_12factor', group: :production

# Authentication gems
gem 'omniauth'
gem 'omniauth-google-oauth2'

#image upload gems
gem 'carrierwave', '~> 0.10.0'
#gem 'carrierwave', '>= 1.0.0.rc', '< 2.0'
gem 'mini_magick', '~> 4.3'

group :test do
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels' # some pre-fabbed step definitions 
  gem 'database_cleaner' # to clear Cucumber's test database between runs
  gem 'capybara' # lets Cucumber pretend to be a web browser
  gem 'launchy' # a useful debugging aid for user stories
  end

ruby '2.5.1'
