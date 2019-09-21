class CountriesController < ApplicationController
  
  def show
    @posts = Post.where(country_id: params[:id])
    @country = Country.find(params[:id])
  end
end