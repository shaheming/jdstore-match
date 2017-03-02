class ProductList < ApplicationRecord
	belongs_to :order
	has_one :product
end
