class RestaurantPizzasController < ApplicationController
    def new
        @restaurant_pizza = RestaurantPizza.new
        @pizzas = Pizza.all 
        @restaurants = Restaurant.all
    end

    def create
        @restaurant_pizza = RestaurantPizza.create(rp_params)

            if @restaurant_pizza.valid? 
                redirect_to restaurant_path(@restaurant_pizza.restaurant)
            else
                flash[:pizza_errors] = @restaurant_pizza.errors.full_messages
                redirect_to new_restaurant_pizza_path
            end
    end

private

    def rp_params
        params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :price)
    end
end
