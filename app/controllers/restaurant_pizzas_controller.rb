class RestaurantPizzasController < ApplicationController

    def new
        @restPizza = RestaurantPizza.new
        @restaurants = Restaurant.all
        @pizzas = Pizza.all
    end


    def create
        @restPizza = RestaurantPizza.create(post_params)


        if @restPizza.valid?
            flash[:success] = "Pizza Assigned Succesfully"
            redirect_to restaurant_path(@restPizza.restaurant)
        else
            flash[:my_error]  = @restPizza.errors.full_messages
            redirect_to new_rest_pizza_path
        end

    end

    private

    def post_params
        params.require(:restaurant_pizza).permit(:pizza_id, :restaurant_id, :price)
    end
end
