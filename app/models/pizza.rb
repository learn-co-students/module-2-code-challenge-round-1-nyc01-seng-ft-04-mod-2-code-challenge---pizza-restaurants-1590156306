class Pizza < ApplicationRecord
    has_many :restaurant_pizzas, :dependent => :destroy
    has_many :restaurants, through: :restaurant_pizzas

    # def restaurant_count
    #     count = 0
    #     self.restaurant_pizzas.each do |p|
    #         if p
    #             count += 1
    #         end
        
    #     count
    #     end
    # end

end
