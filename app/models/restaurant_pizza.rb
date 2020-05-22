class RestaurantPizza < ApplicationRecord
    belongs_to :restaurant 
    belongs_to :pizza

    validates :pizza_price, inclusion: 1..30
    validates :pizza_id, uniqueness: true
    
end
