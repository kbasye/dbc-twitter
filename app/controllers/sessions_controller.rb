class SessionsController < ApplicationController
	
	def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:username] = user.username
      redirect_to user_path(user)    
    else
      redirect_to root_url
    end
	end

	def destroy
		session.clear
		redirect_to root_url
	end

end
