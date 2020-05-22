class RestaurantPizza < ApplicationRecord
  belongs_to :pizza
  belongs_to :restaurant

  validates :price, numericality: {greater_than_or_equal_to: 0}
  validates :price, numericality: {less_than_or_equal_to: 30}
  
  validate :same_pizza

  def same_pizza
    if self.pizza.name == self.pizza.name
      self.errors.add(:name, "Pizza already exists")
    end
  end
  
end
