class Restaurant < ApplicationRecord
  has_many :restaurant_pizzas
  has_many :pizzas, through: :restaurant_pizzas

  def average_price
    prices = []

    self.restaurant_pizzas.each do |restaurant_pizza|
        prices << restaurant_pizza.price
    end

    if prices.length > 0
        prices.sum / prices.length
    end
  end
end
