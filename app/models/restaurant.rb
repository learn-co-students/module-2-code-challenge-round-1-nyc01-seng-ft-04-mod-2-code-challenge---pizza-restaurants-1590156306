class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :pizzas, through: :restaurant_pizzas



    # def average_price # will equal to return value of average pizza price
    #     @total = []
    #     Self.restaurant_pizzas.each do |pizza|
    #         @pizza_price = pizza.price #price of one pizza
    #     end
    # end


    # ### 9. Advanced: Restaurant Average Pizza Price
    # - do in model, skinny controllers, fat models
    #     - Restaurant.first.restaurant_pizzas.each do |pizza|
    #         pizza.price
    
    # Show the average price of a Pizza on the Restaurant show page. 
    
    # To calculate the average, add up all of the Restaurant's Pizzas' prices,
    # and then divide by the number of Pizzas.


end
