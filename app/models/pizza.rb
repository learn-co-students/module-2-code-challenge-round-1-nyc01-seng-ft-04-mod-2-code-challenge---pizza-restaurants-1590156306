class Pizza < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :restaurants,through: :restaurant_pizzas
    def rest_count
        self.restaurant_pizzas.length
    end
end
