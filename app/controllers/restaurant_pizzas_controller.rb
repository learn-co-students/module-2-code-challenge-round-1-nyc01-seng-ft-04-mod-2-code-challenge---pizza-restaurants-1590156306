class RestaurantPizzasController < ApplicationController

    def new
    @restaurant_pizza = RestaurantPizza.new

    @pizzas = Pizza.all
    @restaurant = Restaurant.all
    end

    
    def create
    @restaurant_pizza = RestaurantPizza.Create(restaurantpizza_params)
        if @restaurant_pizza.valid?
            flash[:success] = "Pizza Made!"
            redirect_to restaurant_path(@restaurant)
        else
            flash[:restaurant_pizza_error] = @restaurant_pizza.error.full_messages
            redirect_to new_restaurant_pizza_path()
        end
    end

    private

    def restaurantpizza_params
        params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :price)
    end
end
