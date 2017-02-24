class AddTimeToProduct < ActiveRecord::Migration[5.0]
  def change
  	add_column :products, :time,:datatime
  end
end
