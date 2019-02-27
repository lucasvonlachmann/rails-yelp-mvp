# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#r
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
20.times do |t|
  category = ["chinese", "italian", "japanese", "french", "belgian"].sample
  Restaurant.create(name: Faker::FunnyName.name, address: Faker::Address.street_address, category: category)
  Review.create(restaurant_id: t, content: Faker::Cannabis.health_benefit, rating: rand((0..5)))
end
