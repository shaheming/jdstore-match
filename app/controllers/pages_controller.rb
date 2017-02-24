class PagesController < ApplicationController
	def about
		
	end

	def test
		@products = Product.all
	end
	def test_test
		@products = Product.all
	end
end
