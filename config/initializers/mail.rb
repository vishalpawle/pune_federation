if Rails.env.development?
  ActionMailer::Base.smtp_settings = {
    address:              'smtp.nfbmpune.org',
    port:                 587,
    domain:               'nfbmpune.org',
    user_name:            'noreply@nfbmpune.org',
    password:             'CRdLSYb0',
    authentication:       'plain',
    enable_starttls_auto: false,
    :openssl_verify_mode  => 'none'

 }
elsif Rails.env.production?
  ActionMailer::Base.smtp_settings = {
    address:              'smtp.nfbmpune.org',
    port:                 587,
    domain:               'nfbmpune.org',
    user_name:            'noreply@nfbmpune.org',
    password:             'CRdLSYb0',
    authentication:       'plain',
    enable_starttls_auto: false,
    :openssl_verify_mode  => 'none'

 }

end
