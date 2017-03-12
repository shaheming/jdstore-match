class AddIndexOfAasmAndIsPaidDateInOrder < ActiveRecord::Migration[5.0]
  def change
  	add_index :orders, :is_paid
  	add_index :orders, :token
  	add_index :orders, :user_id
  end
end
