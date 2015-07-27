class SessionsController < ApplicationController
  def signin
    render 'root'
  end
  
  def signout
    render 'sessions/destroy'
  end

  def new
  end

  def create
   sessions=params[:session]
   @user = User.find_by_email(params[:session][:email])
   if @user && @user.authenticate(params[:session][:password])
    session[:user]=@user.id
    redirect_to root_path
   else
    render 'new'
   end
  end

  def destroy
    session[:user]=nil
    redirect_to root_path
  end
end
