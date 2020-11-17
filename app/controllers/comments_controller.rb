class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
    redirect_to "/lists/#{commnet.list.id}/cards/#{comment.card.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(list_id: params[:list_id], card_id: params[:card_id])
  end
end
