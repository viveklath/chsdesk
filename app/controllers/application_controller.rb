class ApplicationController < ActionController::Base
  protect_from_forgery
 #   force_ssl
###  before_filter { |c| Authorization.current_user = c.current_user } 
  
  protected 
  
  def permission_denied 
    flash[:error] = "Sorry, you are not allowed to access that page." 
    redirect_to root_url 
  end

  private

  def current_user
    @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
  end
  helper_method :current_user


end
