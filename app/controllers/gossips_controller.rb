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

    if @gossip.save
      flash[:success] = "Potin enregistré !"
      redirect_to root_path
    else
      flash[:danger] = "Veuillez remplir correctement les champs."
      render new_gossip_path
    end
  end

  def edit
  end

  def update
        
  end
end
