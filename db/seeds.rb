# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all

require 'faker'

Item.create!(title: Faker::Games::Pokemon.name, description: Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 3, r_digits: 2), image_url: "https://cdn.pixabay.com/photo/2019/11/08/11/56/cat-4611189__480.jpg")
Item.create!(title: Faker::Games::Pokemon.name, description: Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 3, r_digits: 2), image_url: "https://cdn.pixabay.com/photo/2016/12/18/18/42/kittens-1916542__480.jpg")
Item.create!(title: Faker::Games::Pokemon.name, description: Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 3, r_digits: 2), image_url: "https://cdn.pixabay.com/photo/2015/11/07/11/34/kitten-1031261__480.jpg")
Item.create!(title: Faker::Games::Pokemon.name, description: Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 3, r_digits: 2), image_url: "https://cdn.pixabay.com/photo/2017/05/05/22/28/kitten-2288404__480.jpg")
Item.create!(title: Faker::Games::Pokemon.name, description: Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 3, r_digits: 2), image_url: "https://cdn.pixabay.com/photo/2019/06/18/11/32/cat-4282123__480.jpg")
Item.create!(title: Faker::Games::Pokemon.name, description: Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 3, r_digits: 2), image_url: "https://cdn.pixabay.com/photo/2017/07/07/21/05/kitten-2482743__480.jpg")
Item.create!(title: Faker::Games::Pokemon.name, description: Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 3, r_digits: 2), image_url: "https://cdn.pixabay.com/photo/2019/06/14/14/15/kitten-4273665__480.jpg")
Item.create!(title: Faker::Games::Pokemon.name, description: Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 3, r_digits: 2), image_url: "https://cdn.pixabay.com/photo/2017/08/11/12/00/kitten-2630518__480.jpg")
Item.create!(title: Faker::Games::Pokemon.name, description: Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 3, r_digits: 2), image_url: "https://cdn.pixabay.com/photo/2018/03/27/17/25/cat-3266671__480.jpg")
Item.create!(title: Faker::Games::Pokemon.name, description: Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 3, r_digits: 2), image_url: "https://cdn.pixabay.com/photo/2018/03/27/17/25/cat-3266674__480.jpg")
Item.create!(title: Faker::Games::Pokemon.name, description: Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 3, r_digits: 2), image_url: "https://cdn.pixabay.com/photo/2019/05/29/16/53/cat-4238013__480.jpg")
Item.create!(title: Faker::Games::Pokemon.name, description: Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 3, r_digits: 2), image_url: "https://cdn.pixabay.com/photo/2017/03/29/15/59/small-cat-2185670__480.jpg")
Item.create!(title: Faker::Games::Pokemon.name, description: Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 3, r_digits: 2), image_url: "https://cdn.pixabay.com/photo/2014/11/12/14/30/cat-528390__480.jpg")
Item.create!(title: Faker::Games::Pokemon.name, description: Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 3, r_digits: 2), image_url: "https://cdn.pixabay.com/photo/2019/07/06/20/09/cats-4321163__480.jpg")
Item.create!(title: Faker::Games::Pokemon.name, description: Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 3, r_digits: 2), image_url: "https://cdn.pixabay.com/photo/2016/07/14/19/55/tabby-kitten-1517450__480.jpg")
Item.create!(title: Faker::Games::Pokemon.name, description: Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 3, r_digits: 2), image_url: "https://cdn.pixabay.com/photo/2019/10/18/19/44/paws-4560021__480.jpg")
Item.create!(title: Faker::Games::Pokemon.name, description: Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 3, r_digits: 2), image_url: "https://cdn.pixabay.com/photo/2017/04/19/20/04/cat-2243438__480.jpg")
Item.create!(title: Faker::Games::Pokemon.name, description: Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 3, r_digits: 2), image_url: "https://cdn.pixabay.com/photo/2015/08/05/08/50/cat-875823__480.jpg")
Item.create!(title: Faker::Games::Pokemon.name, description: Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 3, r_digits: 2), image_url: "https://cdn.pixabay.com/photo/2019/06/14/14/15/kitten-4273665__480.jpg")
Item.create!(title: Faker::Games::Pokemon.name, description: Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 3, r_digits: 2), image_url: "https://cdn.pixabay.com/photo/2018/07/17/13/14/cat-3544133__480.jpg")