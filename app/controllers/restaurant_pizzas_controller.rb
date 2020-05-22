class RestaurantPizzasController < ApplicationController

    def new
        @restaurantpizza = RestaurantPizza.new
        @pizzas = Pizza.all
        @restaurants = Restaurant.all
    end

    def create
        @restaurantpizza = RestaurantPizza.create(rp_params)

        if @restaurantpizza.valid?
            redirect_to restaurant_path(@restaurantpizza.restaurant)
        else
            flash[:errors] = @restaurantpizza.errors.full_messages

            redirect_to new_restaurant_pizza_path
        end
    end

    private

    def rp_params
        params.require(:restaurant_pizza).permit(:price, :pizza_id, :restaurant_id)
    end

end
