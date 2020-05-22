class RestaurantPizzasController < ApplicationController

    def new
        @restaurant_pizza=RestaurantPizza.new
    end

    def create
        @restaurant_pizza=RestaurantPizza.create(strong_params)
    end

    private

    def strong_params
        params.require(:restaurant_pizza).permit(:restaurant_id,:pizza_id,:price)
    end
end
