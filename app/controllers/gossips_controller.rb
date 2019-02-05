class GossipsController < ApplicationController
  def index
  end

  def show
    @current_gossip = Gossip.find(params[:id])
  end

  def new
  end

  def create
    Gossip.new_gossip(params)
  end

  def edit
  end
end
