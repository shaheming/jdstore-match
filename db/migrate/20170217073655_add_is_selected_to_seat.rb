class AddIsSelectedToSeat < ActiveRecord::Migration[5.0]
  def change
    add_column :seats, :is_selected, :boolean, default: false
  end
end
