class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :pizzas, through: :restaurant_pizzas

    def average_price
        total_price = self.restaurant_pizzas.map {|pizza| pizza.price}.sum
        number_of_pizza = self.restaurant_pizzas.count 
        (total_price/number_of_pizza).to_f
    end
end
