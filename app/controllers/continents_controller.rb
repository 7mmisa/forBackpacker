class ContinentsController < ApplicationController
  def show
    @posts = Post.where(continent_id: params[:id])
  end
end