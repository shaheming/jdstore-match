class AddLatAndLngToProduct < ActiveRecord::Migration[5.0]
  def change
  	remove_column :products,:lng
  	remove_column :products,:lat
  	add_column :products,:lng,:string,default: "0"
  	add_column :products,:lat,:string,default: "0"
  end
end


