config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               'puneblindfederation.org',
  user_name:            'dntrpl2nfbmp@gmail.com',
  password:             '9637290294',
  authentication:       'plain',
  enable_starttls_auto: true  }
config.action_mailer.default_url_options = { :host => 'localhost:3000' }
