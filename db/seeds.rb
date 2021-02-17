# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "123", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London", phone_number: "456", category: "italian" }
pizza_west =  { name: "Pizza West", address: "60B Shoreditch Low St, Berlin", phone_number: "748", category: "belgian" }
pizza_north =  { name: "Pizza North", address: "56A Shoreditch Medium St, Paris", phone_number: "999", category: "japanese" }
pizza_south =  { name: "Pizza South", address: "56A Shoreditch Very High St, Amsterdam", phone_number: "111", category: "french" }

[ dishoom, pizza_east, pizza_west, pizza_north, pizza_south ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
