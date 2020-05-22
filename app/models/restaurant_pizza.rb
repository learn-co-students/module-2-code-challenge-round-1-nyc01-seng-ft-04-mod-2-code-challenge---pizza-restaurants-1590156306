class RestaurantPizza < ApplicationRecord
    belongs_to :restaurant
    belongs_to :pizza
    
    validates :pizza_price, numericality: {greater_than:1, less_than_or_equal_to:30}
    validates :pizza_id, uniqueness: :true
    #note - i had to remove this for a sec in order to create multiple associations of pizza
    #and restaurant for the advanced deliverable. otherwise each pizza would only ever be in one place
    #but on second thought...is that what you wanted to see? lol

end
