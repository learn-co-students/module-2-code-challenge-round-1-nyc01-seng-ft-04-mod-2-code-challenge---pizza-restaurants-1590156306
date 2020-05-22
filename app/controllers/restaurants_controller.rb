class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  
  def show
    @restaurants = Restaurant.find(params[:id])
    @restaurantpizza = RestaurantPizza.all
  end
end
