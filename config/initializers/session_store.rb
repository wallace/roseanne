# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fuubs_session',
  :secret      => 'dacbb2b7c937328f4b8ae16aca7789b11dcbf649af841e155e1080e72d640daeb496af46c65c309ff882b9a8be48bec00f31ca11aa7b3a6917078d5eed113136'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
