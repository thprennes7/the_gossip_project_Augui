class GossipsController < ApplicationController
  def index
  end

  def show
    @current_gossip = Gossip.find(params[:id])
  end

  def new
  end

  def edit
  end
end
