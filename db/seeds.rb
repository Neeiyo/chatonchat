# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all

require 'faker'
20.times do |f|
  items = Item.create!(title: Faker::Games::Pokemon.name, description: Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 3, r_digits: 2), image_url: "https://www.laloutremasquee.com/wp-content/uploads/2010/11/john_blacksad.jpg")
  end