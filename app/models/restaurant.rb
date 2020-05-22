class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :pizzas, through: :restaurant_pizzas

    def avg_price
        total = self.restaurant_pizzas.map {|pizza| pizza.price}.sum
        avg = total/self.restaurant_pizzas.count
        avg.to_f
    end
  
end
