class RestaurantPizzasController < ApplicationController



    def new
    @restaurant_pizza = RestaurantPizza.new  
    end


    def create
    @restaurant_pizza = Restaurant_pizza.create(restaurant_pizza_params)

    redirect_to restaurant_path()
    
        
    end


    private
def restaurant_pizza_params
params.require(:pizza).permit(:pizza_id, :restaurant_id, :price)

end
