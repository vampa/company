# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  address:              	'smtp.gmail.com',
  port:                 	587,
  domain:               	'vampa.org',
  user_name:            	'smtp@vampa.org',
  password:             	'pE4U9RXxEg',
  authentication:       	'plain',
  enable_starttls_auto: 	true
}