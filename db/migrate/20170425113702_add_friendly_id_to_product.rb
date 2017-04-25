class AddFriendlyIdToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :friendly_id, :string, :index => true, :unique => true
    Product.find_each do |p|
      p.update(:friendly_id=> SecureRandom.uuid)
    end
  end
end
