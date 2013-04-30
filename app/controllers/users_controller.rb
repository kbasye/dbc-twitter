class UsersController < ApplicationController
	def create
		@user = User.new(email: params[:email], username: params[:username], password: params[:password])
		if @user.save
			session[:username] = @user.username
			redirect_to @user
		else
			@errors = @user.errors.full_messages
			render '/application/index'
		end
	end

	def show
		@user = User.find(params[:id])
		@users = User.limit(50)
		@tweets = @user.tweets
	end

end
