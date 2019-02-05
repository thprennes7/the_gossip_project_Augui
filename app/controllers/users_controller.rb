class UsersController < ApplicationController
  def index
  end

  def show
    @current_user = User.find(params[:id])
  end

  def new
  end

  def edit
  end
end
