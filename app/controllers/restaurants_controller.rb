class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    @restaurant.save
  end

  redirect_to restaurant_path(@restaurant)

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
