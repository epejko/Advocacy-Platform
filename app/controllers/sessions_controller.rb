class SessionsController < ApplicationController
  
  def create
  	@user = User.find_or_create_from_auth_hash(env["omniauth.auth"])
  	session[:user_id] = @user.id
  	if @user.username.nil?
  	  redirect_to edit_user_path(@user)
  	else
  	   redirect_to :me
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_path
  end

end