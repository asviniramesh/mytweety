class SessionsController < ApplicationController
def create
 auth = request.env["omniauth.auth"]
  #~ @id=request.env["omniauth.auth"].uid
   #~ current_user.update_attribute(:uid,@id)
  user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
  session[:user_id] = user.id
  redirect_to '/friends/index', :notice => "Signed in!"
end
  
  def destroy
  session[:user_id] = nil
  redirect_to root_url, :notice => "Signed out!"
end
end