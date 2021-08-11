# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

CATEGORY = %w(chinese italian japanese french belgian)

10.times do
  post = Flat.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    description: Faker::Quote.most_interesting_man_in_the_world,
    price_per_night: rand(500),
    number_of_guests: rand(400)
  )
  post.save!
end
