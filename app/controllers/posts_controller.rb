class PostsController < ApplicationController
  before_action :move_to_index

  def index
    @posts = Post.includes(:user).order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to posts_path
  end

  def show
    @comment = Comment.new
    @post = Post.find(params[:id])
    @comments = @post.comments.includes(:user).order("created_at ASC")
  end

  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to post_path(post.id)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to controller: :toppages, action: :index unless user_signed_in?
  end
end
