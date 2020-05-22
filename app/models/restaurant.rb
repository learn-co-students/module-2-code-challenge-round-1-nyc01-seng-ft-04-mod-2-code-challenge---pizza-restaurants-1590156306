class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :pizzas, through: :restaurant_pizzas

    def average_price
        menu = RestaurantPizza.all.where(restaurant: self)
        total_price = menu.map {|relation| relation.price}.sum
        number_of_pizzas = self.pizzas.count
        average_price = total_price / number_of_pizzas
    end
end
