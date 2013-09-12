
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'XB5dbC78OiO1QFUd44G8Sw', 'YyTrhjqrpUTsUi32UG6JBWogfZXi4nyEZF1ZujuhMyE'
  provider :facebook, '704645162893812', '89ac23b055d640dbafa128b139f2d85f', :scope => 'user_status'
end

Twitter.configure do |config|
  config.consumer_key = 'XB5dbC78OiO1QFUd44G8Sw'
  config.consumer_secret = 'YyTrhjqrpUTsUi32UG6JBWogfZXi4nyEZF1ZujuhMyE'
  config.oauth_token = '200599584-uf0JE2m9CJC2Tuo2hXeGLuraDxR2Ffj5Zwxx1v77'
  config.oauth_token_secret = 'hYciqV99R7ryPYteQ3VtNyA66o7DXtYYidrEtMj3wc'
  end