class UsersController < ApplicationController
  def index
  end

  def show
    @current_user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password], city_id: params[:city].to_i, age: params[:age], description: params[:description])

    if @user.save
      flash[:success] = "Profil enregistré !"
      redirect_to root_path
    else
      flash[:danger] = "Qu'est ce que tu fous ? Recommence !"
      render :new
    end
  end

  def edit
  end
end

private
