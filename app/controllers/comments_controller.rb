class CommentsController < ApplicationController

  def create
    @comment = Comment.create(post_params)
    redirect_to post_path(params[:post_id])
  end
  
  private
  
  def post_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
