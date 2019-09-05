class CountriesController < ApplicationController
  
  def show
    @posts = Post.where(country_id: params[:id])
  end
end