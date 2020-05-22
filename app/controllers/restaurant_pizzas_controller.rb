class RestaurantPizzasController < ApplicationController

    def index
        
    end
    
    def new
        @restaurant_pizza = RestaurantPizza.new
    end
    
    def create
        @restaurant_pizza = RestaurantPizza.create(restaurant_pizza_params)
        redirect_to restaurant_path(@restaurant_pizza.restaurant.id)
    end
    
    def edit
    
    end
    
    def update
    
    end
    
    def show
        
    end
    
    def destroy
    
    end

    private

    def restaurant_pizza_params
        params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id)
    end

end
