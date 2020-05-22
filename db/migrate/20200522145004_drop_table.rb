class DropTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :restaurant_pizza_tables
  end
end
