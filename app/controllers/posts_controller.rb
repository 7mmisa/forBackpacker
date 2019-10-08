class PostsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @posts = Post.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @posts = Post.new
    @posts.images.build
  end
  
  def create
    Post.create(post_params)
  end

  def show
    @posts = Post.find(params[:id])
    @comment = Comment.new
    @comments = @posts.comments.includes(:user)
  end
  
  def destroy
    post = Post.find(params[:id])
    post.destroy if post.user_id == current_user.id
  end

  def edit
    @posts = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    if post.user_id == current_user.id
      post.update(post_params)
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :text, :country_id, images_attributes: [:id, :image]).merge(user_id: current_user.id)
    end

    def move_to_index
      redirect_to action: :index unless user_signed_in?
    end
end