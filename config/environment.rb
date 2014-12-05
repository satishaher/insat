# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.raise_delivery_errors = true

ActionMailer::Base.smtp_settings = {

  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => ENV['MY_EMAIL'],
  :password             => ENV['MY_EMAIL_PWD'],
  :authentication       => "plain",
  # :openssl_verify_mode  => 'none',
  :enable_starttls_auto => true

}
