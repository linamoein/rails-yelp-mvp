# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
camion_qui_fume = { name: 'Camion Qui Fume', address: '66 Rue Oberkampf, 75011 Paris', category: 'french' }
jolia = { name: 'Jolia', address: '123 Rue du Chemin Vert, 75011 Paris', category: 'french' }
ober_mamma = { name: 'Ober Mamma', address: '107 Bd Richard-Lenoir, 75011 Paris', category: 'italian' }
scaria = { name: 'Scaria', address: '88 Ave Parmentier, 75011 Paris', category: 'italian' }
bon_appetit = { name: 'Bon appétit', address: '79 Ave Parmentier, 75011 Paris', category: 'chinese' }

[camion_qui_fume, jolia, ober_mamma, scaria, bon_appetit].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
