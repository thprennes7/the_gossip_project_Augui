class CommentsController < ApplicationController
  def edit
  end

  def index
  end

  def new
    puts params
    @comment = Comment.new
  end

  def create
    @comment = Comment.new_comment(params)

    if @comment.save
      flash[:success] = "Commentaire ajouté !"
      redirect_to gossip_path(params[:gossip_id])
    else
      flash[:danger] = "Veuillez remplir correctement le champ."
      redirect_to new_gossip_comment_path(params[:gossip_id])
    end
  end

  def show
  end
end
