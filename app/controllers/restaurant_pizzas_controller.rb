class RestaurantPizzasController < ApplicationController
  def new
    @pizzas = Pizza.all.uniq
    @restaurants = Restaurant.all
    @restaurant_pizza = RestaurantPizza.new
  end

  def create
    @restaurant_pizza = RestaurantPizza.create(rp_params)
    if @restaurant_pizza.valid?
      redirect_to restaurant_path(@restaurant_pizza.restaurant)
    else
      flash[:pizza_error] = @restaurant_pizza.errors.full_messages
      redirect_to new_restaurant_pizza_path
    end
  end
  
  def edit
    @pizzas = Pizza.all
    @restaurants = Restaurant.all
    @restaurant_pizza = RestaurantPizza.find(params[:id])
  end

  def update
    @restaurant_pizza = RestaurantPizza.find(params[:id])
    @restaurant_pizza.update(rp_params)
    if @restaurant_pizza.valid?
      redirect_to restaurant_path(@restaurant_pizza.restaurant)
    else
      flash[:pizza_error] = @restaurant_pizza.errors.full_messages
      redirect_to edit_restaurant_pizza_path(@restaurant_pizza)
    end
  end
  
  private

  def rp_params
    params.require(:restaurant_pizza).permit(:pizza_id, :restaurant_id, :price)
  end

end
