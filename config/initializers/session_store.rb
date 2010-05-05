# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_app_session',
  :secret      => 'f98c139831d14ef0a5393f7743f121b3b0923c8e34f1405becdf9cd4dc3369107a42bd88a9766441f898b8598fd1f32c050aab47fd423ba57fd548fc77a4ed7f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
