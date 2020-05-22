class CreateRestaurantPizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_pizzas do |t|
      t.string :pizza_id
      t.string :restaurant_id
      t.integer :price
      t.timestamps
    end
  end
end
