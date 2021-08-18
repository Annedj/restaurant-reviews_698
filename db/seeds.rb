puts "Cleaning the database"
Restaurant.destroy_all
puts "Database cleaned!"

puts "Creating restaurants"

100.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    rating: rand(1..5),
    chef_name: Faker::Music::RockBand.name
  )
  puts "Restaurant #{restaurant.name} has been created!"
end

puts "#{Restaurant.count} have been added! 👌"
