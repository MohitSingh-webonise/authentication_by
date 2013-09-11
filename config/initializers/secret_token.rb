# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Authentication::Application.config.secret_key_base = '74bcae23a1f1a26388df0610d80852e8686e08dedb725e4139f959c8560bace607c6127e866d5f42e2af14744b0c74a97749adc1f4d25b53da68ea36228f65fe'
