# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_a30m_session',
  :secret      => '90754ec730a87c49fbaf209c0dad35f52e3efc6aa0372ef83ee5f358687178cffa6ac968dd5f6ea255cf6c4b8ca0f65eda689ce52a3e77da88a0ba5eaed058bb'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
