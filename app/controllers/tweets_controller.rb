class TweetsController < ApplicationController
	def new
		@tweet = Tweet.new
	end

	def create
		@user = current_user
		@tweet = @user.tweets.create(body: params[:body])
		redirect_to user_path(@user)
	end

	def destroy
		@user = current_user
		Tweet.find(params[:id]).destroy
		redirect_to user_path(@user)
	end

end
