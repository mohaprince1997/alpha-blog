class SessionsController < ApplicationController
  def new

  end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      flash[:success] = "You have succssefully loged in"
      session[:user_id] = user.id
      redirect_to user_path(user)

    else
      flash.now[:danger] = 'Somthing is wronge with you or your informations'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have succssefully logout"
    redirect_to root_path
  end

end
