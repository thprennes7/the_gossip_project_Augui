class GossipsController < ApplicationController
  
  def index

  end

  def show
    @current_gossip = Gossip.find(params[:id])
  end

  def new
  end

  def create
    @gossip = Gossip.new_gossip(params)
    @gossip.user = current_user
    if @gossip.save
      flash[:success] = "Potin enregistré !"
      redirect_to root_path
    else
      flash[:danger] = "Veuillez remplir correctement les champs."
      render :new
    end
  end

  def edit
    @current_gossip = Gossip.find(params[:id])
  end

  def update
    @current_gossip = Gossip.find(params[:id])

    if @current_gossip.update(title: params[:title], content: params[:content])
      flash[:success] = "Le potin a été mis à jour !"
      redirect_to @current_gossip
    else
      flash[:danger] = "Veuillez remplir correctement les champs."
      render :edit
    end
  end

  def destroy
    @current_gossip = Gossip.find(params[:id])


    if @current_gossip.destroy
      flash[:success] = "Le potin a été supprimé !"
      redirect_to @current_gossip
    else
      flash[:danger] = "Veuillez remplir correctement les champs."
      render :edit
    end
  end
end
