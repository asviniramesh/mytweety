Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'Ul9RB6ecyF0PkQOkqeY5w', 'oTuQPoxb5iA00GklNxk7lScduVBPnSP6bpxJgXHUM'
 # provider :facebook, 'APP_ID', 'APP_SECRET'
  #provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end