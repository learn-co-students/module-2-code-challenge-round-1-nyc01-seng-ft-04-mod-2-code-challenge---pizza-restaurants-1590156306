class Restaurant < ApplicationRecord
  has_many :restaurant_pizzas
  has_many :pizzas, through: :restaurant_pizzas



  def avg_price
    total = 0
    counter = self.restaurant_pizzas.count
  arr = self.restaurant_pizzas.map do |p|
  p.pizza_price
  end

 arr.each do |e|
    total += e
  end
  total/counter
  # ok = (arr / counter)
  # ok
  end

end
