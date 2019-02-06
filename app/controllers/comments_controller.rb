class CommentsController < ApplicationController
  def edit
    @current_comment = Comment.find(params[:id])
  end

  def update
    @current_comment = Comment.find(params[:id])

    if @current_comment.update(content: params[:content])
      flash[:success] = "Commentaire mis à jour !"
      redirect_to gossip_path(params[:gossip_id])
    else
      flash[:danger] = "Veuillez remplir correctement le champ."
      redirect_to edit_gossip_comment_path(params[:gossip_id])
    end
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

  def destroy
    @current_comment = Comment.find(params[:id])


    if @current_comment.destroy
      flash[:success] = "Le potin a été supprimé !"
      redirect_to gossip_path(params[:gossip_id])
    else
      flash[:danger] = "Erreur."
      render gossip_path(params[:gossip_id])
    end
  end

  def show
  end
end
