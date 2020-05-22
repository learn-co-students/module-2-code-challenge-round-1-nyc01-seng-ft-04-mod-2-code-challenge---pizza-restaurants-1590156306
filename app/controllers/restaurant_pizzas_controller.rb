class RestaurantPizzasController < ApplicationController

    def new 
        @restaurantpizza = RestaurantPizza.new
    end

    def create
        @restaurantpizza = RestaurantPizza.create(restaurant_pizza_params)
        if @restaurantpizza.valid?
        redirect_to restaurant_path(@restaurantpizza.restaurant.id)
        else 
            flash[:errors] = @restaurantpizza.errors.full_messages
            redirect_to new_restaurantpizza_path
        end
    end

    private 
    def restaurant_pizza_params
        params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :pizza_price)
    end

end
