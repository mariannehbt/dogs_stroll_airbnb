# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Création de 100 City
require 'faker'
100.times do
  city = City.create!(city_name: Faker::Address.city)
end

# Création de 100 Dogsitter
require 'faker'
100.times do
  dogsitter = Dogsitter.create!(first_name: Faker::Name.first_name, city_id: City.all.sample.id)
end

# Création de 100 Dog
require 'faker'
100.times do
  dog = Dog.create!(first_name: Faker::Name.first_name, city_id: City.all.sample.id)
end

# Création de 100 Stroll (avec random Dogsitter & random Dog)
require 'faker'
100.times do
  stroll = Stroll.create!(dogsitter_id: Dogsitter.all.sample.id, dog_id: Dog.all.sample.id, city_id: City.all.sample.id, date: Faker::Date.in_date_period)
end