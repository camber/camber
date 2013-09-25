# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

# Handle figaro during asset precompilation
# http://blog.berylliumwork.com/2013/07/tips-on-rails-4-asset-precompile-during.html


if secret_token = ENV['SECRET_TOKEN']
  Camber::Application.config.secret_key_base = secret_token
else
  puts "Secret token cannot be loaded!"
end

