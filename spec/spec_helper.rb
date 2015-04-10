if ENV['COV']
  require 'simplecov'
  SimpleCov.start 'rails' do
    add_filter "/rails/"
  end
end
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'shoulda/matchers'
require "email_spec"
require 'capybara/rspec'
require 'capybara/rails'
require 'capybara-screenshot/rspec'
require "paperclip/matchers"

Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
  config.include Paperclip::Shoulda::Matchers
  config.include EmailSpec::Helpers
  config.include EmailSpec::Matchers
  # config.include Warden::Test::Helpers
  # Warden.test_mode!

  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
  # If true, the base class of anonymous controllers will be inferred
  # automatically. This will be the default behavior in future versions of
  # rspec-rails.
  config.infer_base_class_for_anonymous_controllers = false

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.use_transactional_fixtures = false

  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
    system("rm -rf #{Rails.root.join("tmp/capybara/*")}")
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  # config.before(:each) { GC.disable }
  # config.after(:each) { GC.enable }
  config.before(:all) { DeferredGarbageCollection.start }
  config.after(:all) { DeferredGarbageCollection.reconsider }

  def should_be_asked_to_sign_in
    it {response.should redirect_to(new_user_session_path)}
    it {flash[:alert].should =~ /Please sign in/}
  end

  def should_not_be_artistized
    it {expect(response.status).to eq 401}
    it {expect(response.body).to match /You are not artistized to access this page/ }
  end

  def signin(user)
    visit '/users/sign_in'
    if has_selector?("form#new_user[action='/users/sign_in']")
       # current_path == '/users/sign_in'
      fill_in "user_email", :with => user.email
      fill_in "user_password", :with => user.password
      click_button :user_submit
    end
    # page.should have_content('Signed in successfully.')
  end

  def signin_and_visit(user, url)
    login_as user, :scope => :user
    visit url
    # visit url
    # if page.has_selector?("form#new_user[action='/users/sign_in']")
    #   fill_in "user_email", :with => user.email
    #   fill_in "user_password", :with => user.password
    #   click_button :user_submit
    #   visit url
    # end
  end

  def flash_should_contain(text)
    page.find("div#flash").should have_content text
  end

  # def fill_registration_abstract(text)
  #   #js must be enabled
  #   page.execute_script  "bio14.registration.editor.setValue('#{text}')"
  #   # page.execute_script("editor.setValue('#{text}')")
  # end
end
