# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Favourite.destroy_all
Review.destroy_all
Car.destroy_all
Owner.destroy_all

chloe = Owner.create(nickname: 'chloe')
jack = Owner.create(nickname: 'jack')
twey = Owner.create(nickname: 'twey')

puts "#{Owner.count} owners created"

Car.create(
  brand: 'Aston Martin',
  model: 'DB9',
  year: 2016,
  fuel: 'Petrol',
  image_url: 'https://images.pexels.com/photos/13939446/pexels-photo-13939446.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  owner_id: chloe.id
)

Car.create(
  brand: 'Jaguar',
  model: 'XK8',
  year: 2015,
  fuel: 'Petrol',
  image_url: 'https://goauctionmpc.blob.core.windows.net/stock/2185-1-medium.jpg?v=63846649486840',
  owner_id: jack.id)

Car.create(
  brand: 'Bugatti',
  model: 'Veyron',
  year: 2005,
  fuel: 'Petrol',
  image_url: 'https://news.dupontregistry.com/wp-content/uploads/2016/12/bugatti-veyron-red-black-main.jpg',
  owner_id: twey.id
)

puts "#{Car.count} cars created"
