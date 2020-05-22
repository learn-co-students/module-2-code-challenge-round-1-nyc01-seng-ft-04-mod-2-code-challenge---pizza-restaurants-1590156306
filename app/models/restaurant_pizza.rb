class RestaurantPizza < ApplicationRecord
    belongs_to :pizza
    belongs_to :restaurant

    validates :price, presence: true, numericality: { greater_than: 0, less_than: 30 }
end
