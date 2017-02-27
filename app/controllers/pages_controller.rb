class PagesController < ApplicationController
	def about
		
	end

	def test
		@products = Product.all
		p= Product.first
		  @hash = Gmaps4rails.build_markers(p) do |p, marker|
	      marker.lat p.lat.to_f
	      marker.lng p.lng.to_f
	      marker.title p.location
	       marker.picture({
              :url => "/assets/images/location.png",
              :width   => 20,
              :height  => 35
      }) 
    	end 
	end
	def test_test

	end


end
