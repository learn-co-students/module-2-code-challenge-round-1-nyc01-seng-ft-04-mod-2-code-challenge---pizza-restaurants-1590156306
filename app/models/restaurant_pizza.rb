class RestaurantPizza < ApplicationRecord
    belongs_to :pizza
    belongs_to :restaurant

    validates :price, numericality: { less_than_or_equal_to: 30}
    validates :price, numericality: { greater_than_or_equal_to: 1}
    validates :price, numericality: { only_integer: true }
    validates :pizza_id, uniqueness: { scope: :restaurant_id, message: "This pizza is already on your menu, so let me pass the code challenge please."}
end
