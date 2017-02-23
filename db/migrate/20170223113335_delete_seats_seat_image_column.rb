class DeleteSeatsSeatImageColumn < ActiveRecord::Migration[5.0]
  def change
  	remove_column :seats, :seatimg
  end
end
