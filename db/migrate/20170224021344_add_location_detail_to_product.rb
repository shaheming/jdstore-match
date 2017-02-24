class AddLocationDetailToProduct < ActiveRecord::Migration[5.0]
  def change
  	add_column :products,:location_detail,:string
  end
end
