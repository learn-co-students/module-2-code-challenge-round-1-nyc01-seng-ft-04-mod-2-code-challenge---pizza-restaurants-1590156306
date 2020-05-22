class PizzasController < ApplicationController
  
  def index
    @restaurants = Restaurant.all
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
  end
    
  
end
