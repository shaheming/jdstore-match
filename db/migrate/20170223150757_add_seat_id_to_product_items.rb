class AddSeatIdToProductItems < ActiveRecord::Migration[5.0]
  def change
  	add_column :cart_items, :seat_id, :integer
  end
end
