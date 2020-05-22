class RestaurantPizzasController < ApplicationController

    def new
        @rp = RestaurantPizza.new
    end

    def create
        @rp = RestaurantPizza.create(rp_params)
        if @rp.valid?
            redirect_to restaurant_path(@rp.restaurant_id)
        else
            flash[:errors] = @rp.errors.full_messages
            redirect_to new_restaurant_pizza_path
        end
    end



    private 
    def rp_params
        params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :price)
    end
    
end
