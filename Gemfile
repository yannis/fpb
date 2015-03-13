source 'https://rubygems.org'

gem 'rails', '4.1.9'
gem 'mysql2'

gem 'haml-rails'
# gem 'html5-rails'
gem 'paperclip'
gem 'airbrake'
gem 'bundler'
gem "figaro"
gem "actionview-encoded_mail_to"

# Gems used only for assets and not required
# in production environments by default.
gem 'sass-rails', '~> 5.0.0'
gem 'coffee-rails'
gem 'jquery-rails'
gem "jquery-ui-rails"
gem 'uglifier'
gem 'foundation-rails'
gem 'foundation-icons-sass-rails'
gem 'sanitize'
gem "activeadmin",         github: 'gregbell/active_admin'
gem 'formtastic',          github: 'justinfrench/formtastic'

gem 'devise'
# gem 'responders',          github: 'plataformatec/responders'
# gem 'inherited_resources', github: 'josevalim/inherited_resources'
# gem 'activeadmin',         github: 'gregbell/active_admin'
# gem 'formtastic',          github: 'justinfrench/formtastic'
# gem 'countries'
# gem 'country_select'
# gem 'prawn'
# gem "gibbon"

group :development do
  gem "spring"
end

group :development do
  gem 'spring-commands-rspec'
  gem "capistrano"
  gem 'capistrano-rails', '~> 1.1'
  gem 'capistrano-bundler'
  gem 'capistrano-rbenv', '~> 2.0'
  gem "guard-livereload"
  gem 'guard-rspec', require: false
  gem 'guard-bundler'
  gem 'rb-inotify', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-fchange', require: false
  gem 'quiet_assets'
  # gem "better_errors"
  # gem "binding_of_caller"
  gem "rspec-rails", "2.14.2"
end

group :test do
  # gem "rspec-instafail"
  gem "launchy"
  gem "database_cleaner"
  gem "faker"
  gem 'timecop'
  gem 'email_spec'
  gem "factory_girl_rails"
  gem "selenium-webdriver"
  gem 'shoulda-matchers', require: false
  gem 'capybara-screenshot'# , :require => false
  gem 'simplecov', require: false
end

# group :test, :development do
#   gem "parallel_tests"
#   gem "zeus-parallel_tests"
# end

group :production do
  gem 'god'
  gem "unicorn"
end
