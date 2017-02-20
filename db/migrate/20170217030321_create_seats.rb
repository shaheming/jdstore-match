class CreateSeats < ActiveRecord::Migration[5.0]
  def change
    create_table :seats do |t|
      t.string :seatimg

      t.timestamps
    end
  end
end
