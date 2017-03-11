class AddShowOnTimeToProducts < ActiveRecord::Migration[5.0]
  def change
  	add_column :products,:show_on,:date
  end
end
