class AddUserIdToSeat < ActiveRecord::Migration[5.0]
  def change
    add_column :seats, :user_id, :integer
  end
end
