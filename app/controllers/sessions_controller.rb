class SessionsController < ApplicationController
    def new
    end
  
    def create
      @post = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        log_in user
        redirect_to club_path, success: "Vous êtes connecté"
      else
        redirect_to login_path, danger: "Mauvais email ou password"
      end
    end
  
    def destroy
      User.find(params[:id]).destroy
      redirect_to root_url, success: "Profil supprimé"
    end
  end