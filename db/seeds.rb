# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Car.destroy_all
Owner.destroy_all

chloe = Owner.create(nickname: 'chloe')
jack = Owner.create(nickname: 'jack')
twey = Owner.create(nickname: 'twey')

puts "#{Owner.count} owners created"

Car.create(brand: 'Aston Martin', model: 'DB9', year: 2016, fuel: 'Petrol', owner_id: chloe.id)
Car.create(brand: 'Jaguar', model: 'XK8', year: 2015, fuel: 'Petrol', owner_id: jack.id)
Car.create(brand: 'Bugatti', model: 'Veyron', year: 2005, fuel: 'Petrol', owner_id: twey.id)

puts "#{Car.count} cars created"
