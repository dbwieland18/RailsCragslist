# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

Category.create!(name: "for sale")
Category.create!(name: "for rent")
Category.create!(name: "services")
Category.create!(name: "housing")
Category.create!(name: "gigs")
Category.create!(name: "jobs")
Category.create!(name: "events")
Category.create!(name: "community")



100.times do
  Post.create!(category_id: Category.all.sample.id.to_i,
           title: Faker::Lorem.sentence(word_count = 5),
           description: Faker::Lorem.sentence(word_count = 30),
           email: Faker::Internet.email,
           price: rand(50))
end
