class SessionsController < ApplicationController
  def new
  end

  def create
    login(params[:username], params[:email], params[:remember_me])
    if @user
      redirect_back_or_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "username, email or password invalid :("
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_url, :notice => "Logged out"
  end
end
