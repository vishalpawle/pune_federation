if Rails.env.development?
  ActionMailer::Base.smtp_settings = {
    address:              'smtp.gmail.com',
    port:                 587,
    domain:               'puneblindfederation.org',
    user_name:            'noreplytonfbmpune@gmail.com',
    password:             '9881012931',
    authentication:       'plain',
    enable_starttls_auto: true }
end
