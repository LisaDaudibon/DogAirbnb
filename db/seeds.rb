# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

City.destroy_all
DogSitter.destroy_all
Dog.destroy_all
Stroll.destroy_all

array_cities = ['New York', 'Los Angeles', 'Chicago', 'Houston', 'Phoenix', 'Philadelphia', 'San Antonio', 'San Diego']

array_dog_races = ['labrador','staffie', 'chihuahua', 'king charles cavalier', 'akita', 'german shepards']

array_cities.each do |city| 
  c = City.create!(name: city)
end

5.times do
  d = Dog.new
  d.name = Faker::Name.first_name
  d.race = array_dog_races.sample
  d.city_id = City.all.sample.id
  d.save
end

10.times do
  ds = DogSitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.all.sample.id)
end

5.times do
  s = Stroll.create!(dog_id: Dog.all.sample.id, dog_sitter_id: DogSitter.all.sample.id)
end