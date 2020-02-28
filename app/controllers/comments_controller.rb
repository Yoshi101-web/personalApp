class CommentsController < ApplicationController

  def create
    Comment.create(comment_params)
    redirect_to post_path(params[:post_id])
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to post_path(comment.post_id)
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
