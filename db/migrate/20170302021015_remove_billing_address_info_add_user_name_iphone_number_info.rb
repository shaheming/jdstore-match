class RemoveBillingAddressInfoAddUserNameIphoneNumberInfo < ActiveRecord::Migration[5.0]
  def change
  	remove_column :orders,:billing_name
  	remove_column :orders,:billing_address
  	remove_column :orders,:shipping_name
  	remove_column :orders,:shipping_address
  	add_column :orders,:first_name,:string
  	add_column :orders,:last_name,:string
  	add_column :orders,:phoneunmber,:string
  end
end
