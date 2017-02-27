# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
genres= [ "Action","Adventure","Animation",
 "Biography",
 "Children","Classic","Comedy","Crime",
 "Devotional","Drama",
 "Family","Fantasy",
 "History","Horror",
 "Musical","Mystery",
 "Period",
 "Romance",
 "Satire","Sci-fi","Sports","Suspense",
 "Thriller",
 "War"]

 locations=[["Beijing","Beijing Wanda International Cinema CBD Branch","39.9092","116.4715"],["Shanghai","Shanghai Pudong  Wanda International Cinema","31.1139","121.5707"],["Shenzhen","Shenzhen Wanda International Cinema CBD Branch","22.56085","22.56085"]]

products_movies =[{title:"Skyfall",description:"Skyfall is a 2012 action thriller film produced by Eon Productions for
	              Columbia Pictures and Metro-Goldwyn-Mayer. It is the 23rd James Bond film produced by Eon Productions
	              and it features Daniel Craig in his third performance as James Bond, and Javier Bardem as Raoul Silva,
	              the film's villain. It was directed by Sam Mendes and written by Neal Purvis, Robert Wade and John Logan,
	               and features an Academy Award-winning theme song by Adele",
	               genre:"Action",image_path:"#{Rails.root}/app/assets/images/skyfall/skyfall_post.jpg"},

				{title:"Moon",description:"Moon is a 2009 British science fiction drama film co-written and directed by Duncan Jones. The film follows Sam Bell (Sam Rockwell), a man who experiences a personal crisis as he nears the end of a three-year solitary stint mining helium-3 on the far side of the Moon. It was the feature debut of director Duncan Jones. Kevin Spacey voices Sam's robot companion, GERTY. Moon premiered at the 2009 Sundance Film Festival and was released in selected cinemas in New York and Los Angeles on 12 June 2009. The release was expanded to additional theatres in the United States and Toronto on both 3 and 10 July and to the United Kingdom on 17 July.",
	               genre:"Sci-fi",image_path:"#{Rails.root}/app/assets/images/moon/moon_post.jpg"},

	            {title:"The Godfather",description:"The Godfather is a 1972 American crime film directed by Francis Ford Coppola and produced by Albert S. Ruddy, based on Mario Puzo's best-selling novel of the same name. It stars Marlon Brando and Al Pacino as the leaders of a fictional New York crime family. The story, spanning 1945 to 1955, chronicles the family under the patriarch Vito Corleone, focusing on the transformation of Michael Corleone (Pacino) from reluctant family outsider to ruthless mafia boss.",
	               genre:"Crime",image_path:"#{Rails.root}/app/assets/images/thegodfather/thegodfather_post.jpg"},

	            {title:"Arrival",description:"Arrival is a 2016 American science fiction film directed by Denis Villeneuve and adapted by Eric Heisserer, based on the 1998 short story, Story of Your Life by Ted Chiang. It stars Amy Adams, Jeremy Renner, and Forest Whitaker.",
	               genre:"Sci-fi",image_path:"#{Rails.root}/app/assets/images/arrival/arrival_post.jpg"},

	            {title:"Lucy",description:"Lucy is a 2014 English-language French science fiction action film written and directed by Luc Besson and produced by his wife Virginie Besson-Silla for his company Europacorp. The film was shot in Taipei, Paris and New York City. It stars Scarlett Johansson, Morgan Freeman, Choi Min-sik and Amr Waked. Johansson portrays the title character, a woman who gains psychokinetic abilities when a nootropic drug is absorbed into her bloodstream.",
	               genre:"Sci-fi",image_path:"#{Rails.root}/app/assets/images/lucy/lucy_post.jpg"},

	             {title:"Transformers Dark of the Moon",description:"Transformers: Dark of the Moon is a 2011 American science fiction action film directed by Michael Bay and based on the Transformers toy line. First released on June 23, 2011, it is the third installment of the live-action Transformers film series and the sequel to 2009's Revenge of the Fallen. The film's story is set three years after the events of the 2009 film, and follows the warring Autobots and Decepticons as they battle to possess powerful technology from their homeworld that had crashed on Earth's moon.",
	               genre:"Action",image_path:"#{Rails.root}/app/assets/images/transformersdarkofthemoon/transformersdarkofthemoon_post.jpg"},

	             {title:"V For Vendetta",description:"V for Vendetta is a 2005 dystopian political thriller film directed by James McTeigue and written by The Wachowski Brothers, based on the 1988 DC/Vertigo Comics limited series of the same name by Alan Moore and David Lloyd. The film is set in an alternative future where a neo-fascist regime has subjugated the United Kingdom. Hugo Weaving portrays V, an anarchist freedom fighter who attempts to ignite a revolution through elaborate terrorist acts and Natalie Portman plays Evey, a young, working-class woman caught up in V's mission, while Stephen Rea portrays the detective leading a desperate quest to stop V.",
	               genre:"Action",image_path:"#{Rails.root}/app/assets/images/vforvendetta/vforvendetta_post.jpg"},

	             {title:"Leaving Las Vegas",description:"Here at WDF, we are always happy to share something creative or inspirational with you. That’s why we’ve features articles of minimal poster designs or typographic posters before. Today we are featuring pictogram movie posters. We are not sure when this whole redesigning classic posters as minimalist images trend began but our previously bare walls are glad that it did. So, without any further ado, here are they.",
	             genre:"Action",image_path:"#{Rails.root}/app/assets/images/leavinglasvegas/leavinglasvegas_post.jpg"},
	             {title:"Magnolia",description:"Here at WDF, we are always happy to share something creative or inspirational with you. That’s why we’ve features articles of minimal poster designs or typographic posters before. Today we are featuring pictogram movie posters. We are not sure when this whole redesigning classic posters as minimalist images trend began but our previously bare walls are glad that it did. So, without any further ado, here are they.",
	             genre:"Action",image_path:"#{Rails.root}/app/assets/images/magnolia/magnolia_post.jpg"},
	              {title:"One Love",description:"Here at WDF, we are always happy to share something creative or inspirational with you. That’s why we’ve features articles of minimal poster designs or typographic posters before. Today we are featuring pictogram movie posters. We are not sure when this whole redesigning classic posters as minimalist images trend began but our previously bare walls are glad that it did. So, without any further ado, here are they.",
	             genre:"Action",image_path:"#{Rails.root}/app/assets/images/onelove/onelove_post.jpg"},
	             {title:"Point Break",description:"Here at WDF, we are always happy to share something creative or inspirational with you. That’s why we’ve features articles of minimal poster designs or typographic posters before. Today we are featuring pictogram movie posters. We are not sure when this whole redesigning classic posters as minimalist images trend began but our previously bare walls are glad that it did. So, without any further ado, here are they.",
	             genre:"Action",image_path:"#{Rails.root}/app/assets/images/pointbreak/pointbreak_post.jpg"},
	             {title:"Spider Man",description:"Here at WDF, we are always happy to share something creative or inspirational with you. That’s why we’ve features articles of minimal poster designs or typographic posters before. Today we are featuring pictogram movie posters. We are not sure when this whole redesigning classic posters as minimalist images trend began but our previously bare walls are glad that it did. So, without any further ado, here are they.",
	             genre:"Action",image_path:"#{Rails.root}/app/assets/images/spiderman/spiderman_post.jpg"},
	             {title:"Twins",description:"Here at WDF, we are always happy to share something creative or inspirational with you. That’s why we’ve features articles of minimal poster designs or typographic posters before. Today we are featuring pictogram movie posters. We are not sure when this whole redesigning classic posters as minimalist images trend began but our previously bare walls are glad that it did. So, without any further ado, here are they.",
	             genre:"Action",image_path:"#{Rails.root}/app/assets/images/twins/twins_post.jpg"},
	              {title:"Up In the Air",description:"Here at WDF, we are always happy to share something creative or inspirational with you. That’s why we’ve features articles of minimal poster designs or typographic posters before. Today we are featuring pictogram movie posters. We are not sure when this whole redesigning classic posters as minimalist images trend began but our previously bare walls are glad that it did. So, without any further ado, here are they.",
	             genre:"Action",image_path:"#{Rails.root}/app/assets/images/upintheair/upintheair_post.jpg"},
	             {title:"Coffee and Cigarettes",description:"Here at WDF, we are always happy to share something creative or inspirational with you. That’s why we’ve features articles of minimal poster designs or typographic posters before. Today we are featuring pictogram movie posters. We are not sure when this whole redesigning classic posters as minimalist images trend began but our previously bare walls are glad that it did. So, without any further ado, here are they.",
	             genre:"Action",image_path:"#{Rails.root}/app/assets/images/coffeeandcigarettes/coffeeandcigarettes_post.jpg"},
	           	 {title:"A Clockwork Orange",description:"Here at WDF, we are always happy to share something creative or inspirational with you. That’s why we’ve features articles of minimal poster designs or typographic posters before. Today we are featuring pictogram movie posters. We are not sure when this whole redesigning classic posters as minimalist images trend began but our previously bare walls are glad that it did. So, without any further ado, here are they.",
	             genre:"Action",image_path:"#{Rails.root}/app/assets/images/aclockworkorange/aclockworkorange_post.jpg"}
	           ]

products =[{title:"Apple iPhone 6 64GB",
	        description: "This Certified Refurbished product has been tested and certified
	              to work and look like new, with minimal to no signs of wear, by a specialized
	              third-party seller approved by Amazon. The product is backed by a minimum 90-day warranty,
	              and may arrive in a generic brown or white box. Accessories may be generic and not directly
	              from the manufacturer.",
	        image_path: "#{Rails.root}/app/assets/images/iphone.jpg"},

	        {title:"A Mid-Back Mesh Chair",
	        description: "Ergonomic office chair with contoured mesh back for breathability
	              Pneumatic seat-height adjustment; padded seat for comfort.",
	        image_path: "#{Rails.root}/app/assets/images/chair.jpg"}
]



u = User.create([ email: 'a@a.com' ,  password: '123456' ,password_confirmation:'123456',is_admin:true])
puts "create a adminer"

u1 = User.create([ email: 'b@b.com' ,  password: '123456' ,password_confirmation:'123456',is_admin:false])
puts "create a user"

quantity  = 64

create_products = for i in 1..30 do
	products_movie = products_movies[rand(0..15)]
	location = locations[rand(0..2)]
	if !products_movie.empty?
		Product.create([title:products_movie[:title],
			genre:products_movie[:genre],
			description:products_movie[:description],
			quantity:quantity,price:rand(5..9)*10,
			location:location[0],location_detail:location[1],
			lat:location[2],lng:location[3],
			image:open(products_movie[:image_path])])
		
		creat_seast= for j in 1..quantity do
		  Seat.create([product_id:i])
		end

	end
end

puts "create products_movie"
puts "creat seats"