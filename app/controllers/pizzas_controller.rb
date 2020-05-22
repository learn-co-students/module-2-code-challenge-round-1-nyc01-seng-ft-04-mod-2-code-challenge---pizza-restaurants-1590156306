class PizzasController < ApplicationController
  
  def index
    @pizzas = Pizza.all
  end
  
  # def new
  
  # end

  def show
  @pizza = Pizza.find(params[:id])
  end
  
  # def create
  
  # end
  
  # def edit
  
  # end
  
  # def update
  
  # end
  

  
  # def destroy
  
  # end
  
  

end


private
def pizza_params
params.require(:pizza).permit(:name, :ingredients)

end

