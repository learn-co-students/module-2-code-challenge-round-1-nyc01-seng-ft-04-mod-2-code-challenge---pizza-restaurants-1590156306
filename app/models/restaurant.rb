class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :pizzas, through: :restaurant_pizzas

    def average_price
        sum = 0
        self.pizzas.each do |pizza|
            sum += RestaurantPizza.find_by(restaurant_id: self.id, pizza_id: pizza.id).price
        end
        sum/self.pizzas.count
    end
end
