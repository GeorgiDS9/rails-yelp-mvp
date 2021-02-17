10.times do
    restaurant = Restaurant.new(
      name: Faker::Restaurant.name,
      address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
      category: ["chinese", "italian", "japanese", "french", "belgian"].sample
      )
    restaurant.save!
end
# # db/seeds.rb
# puts "Cleaning database..."
# Restaurant.destroy_all

# puts "Creating restaurants..."
# the_spoon = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", stars: 5 }
# pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", stars: 4 }

# [ dishoom, pizza_east ].each do |attributes|
#   restaurant = Restaurant.create!(attributes)
#   puts "Created #{restaurant.name}"
# end
# puts "Finished!"
