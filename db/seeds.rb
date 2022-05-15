# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts '...creating faker data'

continents = %w[America Asia Africa Europe Oceania Antarctica]

continents.each do |continent|
  Continent.create(denomination: continent)
end

12.times do
  Country.create(
    denomination: Faker::Address.country,
    population: rand(100000..10000000),
    land_area: rand(10000000..100000000),
    continent_id: rand(Continent.count) + 1
  )
end

24.times do
  City.create(
    denomination: Faker::Address.city,
    population: rand(1000..100000),
    land_area: rand(100000..1000000),
    country_id: rand(Country.count) + 1
  )
end

48.times do
  year = rand(1000..1990)
  month = rand(1..12)
  day = month == 2 ? rand(1..28) : rand(1..30)
  GeographicIcon.create(
    denomination: Faker::Mountain.name,
    date_of_creation: "#{year}-#{month}-#{day}",
    height: rand(10..100),
    history: Faker::Lorem.sentence,
    city_id: rand(City.count) + 1
  )
end

puts 'Faker data created!'
