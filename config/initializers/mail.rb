if Rails.env.production?
  ActionMailer::Base.smtp_settings = {
    address:              'smtp.gmail.com',
    port:                 587,
    domain:               'nfbmpune.org',
    user_name:            'noreplytonfbmpune@gmail.com',
    password:             '9881012931',
    authentication:       'plain',
    enable_starttls_auto: true }
end
