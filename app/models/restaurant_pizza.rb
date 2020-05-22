class RestaurantPizza < ApplicationRecord
    belongs_to :restaurant 
    belongs_to :pizza

    validates :pizza_price, presence: true
end
