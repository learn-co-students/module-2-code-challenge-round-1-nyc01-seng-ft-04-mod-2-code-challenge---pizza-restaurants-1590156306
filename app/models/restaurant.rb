class Restaurant < ApplicationRecord
  has_many :restaurant_pizzas
  has_many :pizzas,through: :restaurant_pizzas


  def price_avg
    my_sum = self.restaurant_pizzas.sum do |pizza|
      pizza.price
    end
    avg=my_sum/self.pizzas.length
  end
end
