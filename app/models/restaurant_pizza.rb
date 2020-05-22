class RestaurantPizza < ApplicationRecord
    belongs_to :restaurant 
    belongs_to :pizza

    validates :price, numericality: {greater_than: 1}
    validates :price, numericality: {less_than: 30}
end
