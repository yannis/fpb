ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => ENV["OUTLOOK_SERVER"],
  :port => ENV["OUTLOOK_PORT"],
  :enable_starttls_auto => true,
  :user_name => ENV["OUTLOOK_USER"],
  :password => ENV["OUTLOOK_PASSWORD"],
  :authentication => :login
}
