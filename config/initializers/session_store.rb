# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dupe_example_app_session',
  :secret      => 'f3563ee7df143372499f39d2915124bb0e12fd06a852683e02e919465e82dace2f2815c39cfaac289a2de074117cefeadcf773a584da3c90915a1c039318e408'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
