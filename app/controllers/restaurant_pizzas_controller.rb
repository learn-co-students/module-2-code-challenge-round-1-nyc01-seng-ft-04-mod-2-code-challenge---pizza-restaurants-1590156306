class RestaurantPizzasController < ApplicationController
  def new
    @restaurantpizza = RestaurantPizza.new
    @restaurants = Restaurant.all
    @pizzas = Pizza.all
  end

  def create
    @restaurantpizza = RestaurantPizza.create(restaurantpizza_params)
    if @restaurantpizza.valid? 
      redirect_to restaurant_path(@restaurantpizza.restaurant)
    else
      flash[:my_errors] = @restaurantpizza.errors.full_messages
      redirect_to new_restaurant_pizza_path
    end
  end

  private

  def restaurantpizza_params
    params.require(:restaurant_pizza).permit(:pizza_id, :restaurant_id, :price)
  end
end
