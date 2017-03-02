class AddSeatPositionToProductList < ActiveRecord::Migration[5.0]
  def change
  	add_column :product_lists,:row,:integer
  	add_column :product_lists,:col,:integer
  end
end
