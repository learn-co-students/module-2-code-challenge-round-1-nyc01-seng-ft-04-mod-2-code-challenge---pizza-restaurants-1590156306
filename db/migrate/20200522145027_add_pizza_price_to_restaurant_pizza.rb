class AddPizzaPriceToRestaurantPizza < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurant_pizzas, :pizza_price, :integer
  end
end
