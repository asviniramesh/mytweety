class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

private
#~ def after_sign_in_path_for resource_or_scope  
   #~ return'/friends/index'
 #~ end
   #~ def after_sign_in_path_for(resource_or_scope)
    #~ if current_user.authentications.find_by_provider("twitter")
      #~ ckey= Ul9RB6ecyF0PkQOkqeY5w
      #~ csecret= oTuQPoxb5iA00GklNxk7lScduVBPnSP6bpxJgXHUM
      #~ auth = current_user.authentications.find_by_provider("twitter")
      #~ atoken = auth.token
      #~ asecret = auth.secret
      #~ Twitter.configure do |config|
        #~ config.consumer_key = Ul9RB6ecyF0PkQOkqeY5w
        #~ config.consumer_secret = oTuQPoxb5iA00GklNxk7lScduVBPnSP6bpxJgXHUM
        #~ config.oauth_token = 742644764-m9RTMYcMG98kR6Hu9TJyVWYjp0kfUcoX9s2T3FAX
        #~ config.oauth_token_secret = IEKajMFsB2kF13pzpdmm3LajS3C7kpTwEDDkue3IJKg
      #~ end
    #~ end

#~ redirect_to '/friends/index'
  #~ end

def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end


  #~ def after_sign_out_path_for(resource_or_scope)
      #~ Twitter.reset
  #~ end

end
