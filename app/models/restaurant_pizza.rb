class RestaurantPizza < ApplicationRecord

    belongs_to :pizza
    belongs_to :restaurant

    validates :price, numericality: { greater_than: 1, less_than: 30, message: "must be between 1 and 30"}


end
