class RestaurantPizzasController < ApplicationController

    def index
        
    end
    
    def new
        @restaurant_pizza = RestaurantPizza.new
    end
    
    def create
        @restaurant_pizza = RestaurantPizza.create(restaurant_pizza_params)
        if @restaurant_pizza.valid?
            flash[:success] = "Restaurant Pizza Association Created"
            redirect_to restaurant_path(@restaurant_pizza.restaurant.id)
        else
            flash[:errors] = @restaurant_pizza.errors.full_messages
            redirect_to new_restaurant_pizza_path
        end
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
        params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :pizza_price)
    end

end
