class CreateRestaurantPizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_pizzas do |t|

      t.timestamps
    end
  end
end
