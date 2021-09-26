class SessionsController < ApplicationController
  def new

  end
  def create
    user = User.find_by(email: params[:session][:email].downcase) 
    if user && user.authenticate(params[:session][:password])
      flash[:success] = "You have succssefully loged in"
    else
      flash.now[:danger] = 'Sonthing is wronge with you or your informations'
      render 'new'
    end
  end

  def destroy

  end

end