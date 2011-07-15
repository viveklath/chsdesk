class ApplicationController < ActionController::Base
  protect_from_forgery
 #   force_ssl


  private
  def current_login
    @current_login ||= Login.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
  end
  
  helper_method :current_login

end
