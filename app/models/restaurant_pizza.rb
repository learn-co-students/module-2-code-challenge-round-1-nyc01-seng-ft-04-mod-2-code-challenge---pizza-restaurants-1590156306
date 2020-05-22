class RestaurantPizza < ApplicationRecord
    belongs_to :pizza
    belongs_to :restaurant
    validation_inclusion_of :price, in: 1..30
end
