# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Business.destroy_all

50.times do
  Business.create!(
    name: Faker::Company.name,
    founded: rand(1900..2019),
    type_of: Faker::Company.industry,
    description: Faker::Company.bs,
    number_of_branches: rand(0..20),
    location: Faker::Address.city
  )
end
