class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  def index
    if current_user
    	redirect_to current_user
    end
  end

  def current_user
    @current_user ||= User.find_by_username(session[:username])
  end

end
