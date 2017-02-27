class PagesController < ApplicationController
	def about
		
	end

	def test
		@products = Product.all
		p= Product.first
			  	l = "50.111111".to_f
		  	ln = "50.1111111".to_f
		  @hash = Gmaps4rails.build_markers(p) do |p, marker|
	
	      marker.lat l
	      marker.lng ln
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
