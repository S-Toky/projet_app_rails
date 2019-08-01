# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
tab = []
tab = ["action", "horreur", "comédie", "drame"]
100.times do
  films = Movie.create!(name: Faker::Movie.quote, year: rand(1900..2020), genre: tab[rand(0..3)], synopsis: Faker::Quote.yoda, director: Faker::Artist.name, allocine_rating: rand(0.0..5.0), my_rating: nil, already_seen: false )
end