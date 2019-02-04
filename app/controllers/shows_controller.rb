class ShowsController < ApplicationController
  def gossip
    @current_gossip = Gossip.find(params[:id])
  end

  def profile
    @current_user = User.find(params[:id])
  end
end
