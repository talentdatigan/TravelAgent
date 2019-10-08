namespace :ships do
  desc "TODO"
  task seed_cabins: :environment do
	#remove the data from the tables before creating new data
	#this ensures we have no stray references to objects that no longer exist
	Cruise.destroy_all
	Cabin.destroy_all
	Ship.destroy_all
	    p 'tables emptied'
  #create the ships
  5.times do |index |
   	Ship.create!(name: Faker::Coffee.blend_name,
   	    tonnage: Faker::Number.within(range: 10000..100000)
	)
    end
p 'ships created'	
	#create cabins for each ship
    ships = Ship.all
    ships.each  do |ship|
    5.times do | index |
    Cabin.create!(
        ship_id: ship.id,
        name: 'Suite #{index+1}',
        beds: Faker::Number.between(from: 1, to: 3),
        deck: Faker::Number.between(from: 1, to: 3))
    	end        
    end
   p 'cabins created'

  #create cruises using the ships
    # the rails capitalize method does just that to each word

 

     ships = Ship.all
     ships.each  do |ship|
      2.times do | index |
       Cruise.create!(
         ship_id: ship.id,
         name: Faker::Hacker.adjective.capitalize + ''  +Faker::Hacker.noun.capitalize+ 'Cruise'
          )
     end        
    end
    p 'cruises created'

  end

end
