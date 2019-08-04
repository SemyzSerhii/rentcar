ActionMailer::Base.smtp_settings = {
  address: 'smtp.sendgrid.net',
  port: 587,
  domain: 'localhost',
  user_name: ENV['mail_username'],
  password: ENV['mail_password'],
  authentication: :login,
  enable_starttls_auto: true
}