class RestaurantsController < ApplicationController
  
  def index
    @restaurants = Restaurant.all
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
    @restaurant = Restaurant.find(params[:id])
  end

  def destroy

  end

end
