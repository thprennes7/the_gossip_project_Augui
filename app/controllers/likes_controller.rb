class LikesController < ApplicationController
include SessionsHelper

  def create
    @like = Like.new(user_id: current_user.id, gossip_id: params[:gossip_id])
    @like.user = current_user
    puts like_params
    if @like.save
      flash[:success] = "like accepté"
      redirect_to show_gossip_path(params[:gossip_id])
    else
      flash[:danger] = "tu pue"
      redirect_to root_path
    end
  end

  def update
  end
private

def like_params
  params.permit(:user_id, :gossip_id)
end
end
