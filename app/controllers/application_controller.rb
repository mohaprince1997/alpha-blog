class ApplicationController < ActionController::Base


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

end
