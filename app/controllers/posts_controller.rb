class PostsController < ApplicationController
  def index
    @posts = Post.all
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
  end

  private
    def post_params
      params.require(:post).permit(:title, :text, images_attributes: [:id, :image]).merge(user_id: 4, country_id: 1)
    end
end