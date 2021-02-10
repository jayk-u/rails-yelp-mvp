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
fuji = { name: "Le Fuji", address: "Rue Derval, Rennes", phone_number: "02000000", category: "japanese"}
kintaro = { name: "Kintaro", address: "Sainte-Anne, Paris", phone_number: "0100", category: "japanese"}
ladess = { name: "Ladess", address: "Dans le 18ème, Paris", phone_number: "0102", category: "belgian"}
cantine_voltaire = { name: "Cantine Voltaire", address: "11ème arrondissement, Paris", phone_number: "0103", category: "chinese"}
chez_gladines = { name: "Chez Gladines", address: "quelque part dans le 13ème à Paris", phone_number: "02050201", category: "french"}

[ fuji, kintaro, ladess, cantine_voltaire, chez_gladines ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
