class AddProductIdToSeat < ActiveRecord::Migration[5.0]
  def change
    add_column :seats, :product_id, :integer  
  end
end
