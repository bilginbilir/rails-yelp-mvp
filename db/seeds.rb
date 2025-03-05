# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

puts "Creating restaurants..."
restaurants = [
  { name: "Epicure", address: "75008 Paris", phone_number: "123456789", category: "french" },
  { name: "Dishoom", address: "7 Boundary St, London", phone_number: "987654321", category: "japanese" },
  { name: "La Piazza", address: "Via Roma, Milan", phone_number: "111222333", category: "italian" },
  { name: "Frites Atelier", address: "Groenplaats, Antwerp", phone_number: "444555666", category: "belgian" },
  { name: "Beijing Express", address: "Nanjing Rd, Shanghai", phone_number: "777888999", category: "chinese" }
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
