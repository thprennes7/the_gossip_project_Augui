class ShowsController < ApplicationController
  def gossip
    @current_gossip = Gossip.find(params[:id])
    return params[:id]
  end
end
