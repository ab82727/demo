class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :user_signed_in?
  def current_user
   @current_user ||= User.find_by(id: session[:user])
  end

  def user_signed_in?
   current_user != nil
  end

end
