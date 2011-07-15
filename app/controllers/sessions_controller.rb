class SessionsController < ApplicationController
  def new
  end

  def create
    login = Login.find_by_email(params[:email])
    if login && login.authenticate(params[:password])
      if params[:remember_me]
        cookies.permanent[:auth_token] = login.auth_token
      else
        cookies[:auth_token] = login.auth_token
      end
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end
  
  def destroy
    cookies.delete(:auth_token)
    redirect_to root_url, :notice => "Logged out!"
  end

end
