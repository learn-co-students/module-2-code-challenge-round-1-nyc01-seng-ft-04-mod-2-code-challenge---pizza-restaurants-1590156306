class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :pizzas, through: :restaurant_pizzas

    # def self.total_restaurants
    #     self.count
    # end
  
end
