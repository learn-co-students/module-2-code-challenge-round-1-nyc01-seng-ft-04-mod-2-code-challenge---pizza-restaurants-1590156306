class Restaurant < ApplicationRecord
  
    has_many :restaurant_pizzas
    has_many :pizzas, through: :restaurant_pizzas

    def average_price
        total = self.pizzas.count
        total_price = 0
        self.restaurant_pizzas.each do |x|
            total_price += x.price
        end
        total_price/total
    end
end
