class UsersController < ApplicationController
  def show
    @name = current_user.name
    @posts = Post.where(user_id: current_user.id).order("created_at DESC")
    @country = Country.find(params[:id])
  end
end