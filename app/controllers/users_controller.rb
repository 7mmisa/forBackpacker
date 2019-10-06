class UsersController < ApplicationController
  def show
    @name = current_user.name
    @posts = Post.where(user_id: current_user.id).order("created_at DESC")
    @country = Country.find(params[:id])
  end

  def update
    current_user.update(user_params)
  end

  def user_params
    params.require(:user).permit(:name, :email, :profile)
  end
end
