# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
Rails.application.configure do
  config.action_mailer.delivery_method = :smtp

  config.action_mailer.smtp_settings = {
    address: 'smtp.gmail.com',
    port: 587,
    authentication: 'plain',
    user_name: 'udainiyarambihari@gmail.com',
    password: 'Anshu@2011',
    enable_starttls_auto: true
  }
end
