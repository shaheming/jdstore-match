class PagesController < ApplicationController
	def about
		
	end

	def test
		@products = Product.all
	end
end
