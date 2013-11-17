# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

if !Rails.env.production?
  Hots::Application.config.secret_key_base = 'af8c46658708790086f9b6d6271d786e02270fb279b5ee7879d2207494ccdbac967c1736b78fa32e6e30b134ad0561bb4180fc5167251bcac8d2495eb9c23c12'
else
  raise "You must set a secret token in ENV['SECRET_TOKEN'] or in config/initializers/secret_token.rb" if ENV['SECRET_TOKEN'].blank?
  Hots::Application.config.secret_key_base = ENV['SECRET_TOKEN']
end
