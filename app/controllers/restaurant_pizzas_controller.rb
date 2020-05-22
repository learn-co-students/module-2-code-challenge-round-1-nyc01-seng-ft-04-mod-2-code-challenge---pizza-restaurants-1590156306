class RestaurantPizzasController < ApplicationController

    def new
        @rp = RestaurantPizza.new
        @restaurants = Restaurant.all
        @pizzas = Pizza.all
    end

    def create
        @rp = RestaurantPizza.create(rp_params)

        if @rp.valid?
            redirect_to restaurant_path(@rp.restaurant)
        else
            flash[:errors] = @rp.errors.full_messages
            redirect_to restaurant_pizzas_new_path
        end
    end

    private

    def rp_params
        params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :price)
    end

end
