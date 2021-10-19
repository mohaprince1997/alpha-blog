class ApplicationController < ActionController::Base


  def logged_in?

  end

  def require_login
  end

  def current_user
    @current_user ||= User.find
  end

end
