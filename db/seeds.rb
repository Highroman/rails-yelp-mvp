# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "06060606060", category: "french" }
pizza_west =  { name: "Pizza West", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "06060606060", category: "french" }
mushroom = { name: "Mushroom", address: "Nirvana, allée du Paradis", phone_number: "666", category: "chinese" }
bad_weed =  { name: "Bad Weed", address: "High high in the sky", phone_number: "06060606060", category: "french" }
bellerose = { name: "Bellerose", address: "7 Boundary St, London E2 7JE", phone_number: "06060606060", category: "french" }

[dishoom, pizza_west, mushroom, bad_weed, bellerose].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
