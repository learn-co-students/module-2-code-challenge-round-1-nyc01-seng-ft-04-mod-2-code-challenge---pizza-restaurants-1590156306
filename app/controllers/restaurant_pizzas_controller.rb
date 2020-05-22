class RestaurantPizzasController < ApplicationController
  def new
    @pizzas = Pizza.all
    @restaurants = Restaurant.all
    @restaurant_pizza = RestaurantPizza.new
  end

  def create
    @restaurant_pizza = RestaurantPizza.create(rp_params)
    # if @restaurant_pizza.valid?
    #   flash[:success] = "Object successfully created"
      redirect_to restaurant_path(@restaurant_pizza.restaurant)
    # else
    #   flash[:error] = "Something went wrong"
    #   render 'new'
    # end
  end
  
  def edit
    @pizzas = Pizza.all
    @restaurants = Restaurant.all
    @restaurant_pizza = RestaurantPizza.find(params[:id])
  end

  def update
    @restaurant_pizza = RestaurantPizza.find(params[:id])
    @restaurant_pizza.update(rp_params)
    redirect_to restaurant_path(@restaurant_pizza.restaurant)
  end
  private

  def rp_params
    params.require(:restaurant_pizza).permit(:pizza, :restaurant, :price)
  end

end
