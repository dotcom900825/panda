class SessionsController < ApplicationController

  def new
  end

  def create
    user = login(params[:email], params[:password], true)
    if user
      flash[:notice] = "Logged in!"
      redirect_back_or_to admin_path
    else
      flash[:notice] = "Email or password was invalid."
      redirect_to root_path
    end
  end

  def destroy
    logout
    flash[:notice] = "Logged out"
    redirect_to root_path
  end
end
