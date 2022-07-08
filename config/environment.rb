# # Load the Rails application.
# require File.expand_path('../application', __FILE__)

# # Initialize the Rails application.
# Rails.application.initialize!

# ActionMailer::Base.smtp_settings = {
#   :address        => 'smtp.sendgrid.net',
#   :port           => '587',
#   :authentication => :plain,
#   :user_name      => ENV['SENDGRID_USERNAME'],
#   :password       => ENV['SENDGRID_PASSWORD'],
#   :domain         => 'cunyversity.com',
#   #:enable_starttls_auto => true
# }


# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# ActionMailer::Base.smtp_settings = {
#   :address        => 'smtp.sendgrid.net',
#   :port           => '465',
#   :authentication => :plain,
#   :user_name      => "apikey",
#   :password       => "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",
#   :domain         => 'cunyversity.com',
#   :enable_starttls_auto => true
# } 

ActionMailer::Base.smtp_settings = {
  user_name: 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
  password: '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', # This is the secret sendgrid API key which was issued during API key creation
  domain: 'localhost:3000',
  address: 'smtp.sendgrid.net',
  port: 587,
  authentication: :plain,
  enable_starttls_auto: true
  }