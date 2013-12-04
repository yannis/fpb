source 'https://rubygems.org'

gem 'rails', '4.0.1'
gem 'mysql2'

gem 'haml-rails'
# gem 'html5-rails'
# gem 'paperclip'
# gem 'airbrake'
gem 'bundler'
gem "figaro"
gem "actionview-encoded_mail_to"

# Gems used only for assets and not required
# in production environments by default.
gem 'sass-rails', '~> 4.0.0'
gem 'coffee-rails'
gem 'jquery-rails'
gem "jquery-ui-rails"
gem 'uglifier'
gem 'foundation-rails'
gem 'sanitize'
# gem 'honeypot-captcha'

# gem 'devise',              github: 'plataformatec/devise'
# gem 'responders',          github: 'plataformatec/responders'
# gem 'inherited_resources', github: 'josevalim/inherited_resources'
# gem 'activeadmin',         github: 'gregbell/active_admin'
# gem 'formtastic',          github: 'justinfrench/formtastic'
# gem 'countries'
# gem 'country_select'
# gem 'prawn'
# gem "gibbon"

group :development do
  gem "capistrano", "~> 2.15"
  gem "guard-livereload"
  gem 'guard-rspec'
  gem 'guard-bundler'
  gem 'rb-inotify', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-fchange', require: false
  gem 'quiet_assets'
  gem "better_errors"
  gem "binding_of_caller"
  gem "rspec-rails"
end

group :test do
  gem "rspec-instafail"
  gem "launchy"
  gem "database_cleaner"
  gem "faker"
  gem 'timecop'
  gem 'email_spec'
  gem "factory_girl_rails"
  gem "selenium-webdriver"
  gem 'shoulda-matchers'
  gem "faker"
  gem 'capybara-screenshot'# , :require => false
  gem 'simplecov', :require => false
end

group :test, :development do
  gem "parallel_tests"
  gem "zeus-parallel_tests"
end

group :production do
  gem 'god'
  gem "unicorn"
end
