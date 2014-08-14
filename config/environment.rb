# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  address:              	'smtp.gmail.com',
  port:                 	587,
  domain:               	'vampa.org',
  user_name:            	'smtp@vampa.org',
  password:             	ENV["SMTP_PASS"],
  authentication:       	'plain',
  enable_starttls_auto: 	true
}