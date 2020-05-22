class RestaurantPizzasController < ApplicationController



    def new
    @restaurant_pizza = RestaurantPizza.new  
    end


    def create
    @restaurant_pizza = Restaurant_pizza.create(restaurant_pizza_params)

    if restaurant.pizza valid?
    redirect_to restaurant_path(@restaurant)

    else 
    flash[restaurant_pizza_errors] = errors.full_messages
    redirect to new_restaurant_path
        
    end


    private
def restaurant_pizza_params
params.require(:pizza).permit(:pizza_id, :restaurant_id, :price)

end
