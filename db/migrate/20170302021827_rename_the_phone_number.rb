class RenameThePhoneNumber < ActiveRecord::Migration[5.0]
  def change
  	rename_column :orders,:phoneunmber,:phonenumber
  end
end
