class PagesController < ApplicationController
    def home
      redirect_to articles_path if logged_in?
    end
    def about
    end
    def destroy
      @ipver4 = RequestsIp.find(params[:id])
      @ipver4.destroy
    end
end