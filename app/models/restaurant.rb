class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas, :dependent => :destroy
    has_many :pizzas, through: :restaurant_pizzas

    def avg_pizza_price
        total = 0
        self.restaurant_pizzas.each do |p|
            total += p.price
        end

        total / self.restaurant_pizzas.count
    end

end


