class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def new
  
  end
  
  def create
  
  end
  
  def edit
  
  end
  
  def update
  
  end
  
  def show
    @pizza=Pizza.find(params[:id])
  end
  
  def destroy
  
  end
end
