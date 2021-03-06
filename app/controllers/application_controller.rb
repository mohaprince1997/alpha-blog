class ApplicationController < ActionController::Base
  before_action :get_ip_adr
  helper_method :logged_in?, :current_user

  def logged_in?
    !!current_user
    
  end

  def require_login
    if !logged_in?
      flash[:danger] = "You need to login"
      redirect_to root_path

    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  private

  def get_ip_adr
    RequestsIp.create(request_ipver4: request.remote_ip)

  end

end
