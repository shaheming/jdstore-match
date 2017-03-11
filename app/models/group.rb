class Group < ApplicationRecord
	has_many :groupships
	has_many :products, :through=>:groupships
end
