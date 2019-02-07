class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Bienvenue #{user.first_name}"
      redirect_to root_path
    else
      flash[:danger] = "Email ou mot de passe invalid"
      render :new
    end

  end

  def destroy
  end

end
