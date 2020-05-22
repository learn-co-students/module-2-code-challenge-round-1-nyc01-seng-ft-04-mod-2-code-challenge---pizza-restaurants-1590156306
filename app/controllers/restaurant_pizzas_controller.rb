class RestaurantPizzasController < ApplicationController

    def new
        @rp = RestaurantPizza.new
    end

    def create
        
    end

    private

    def rp_params
        params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :price)
    end

end
