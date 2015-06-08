# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.create!(title: "New Bike", content: "Asking $250")

Post.create!(title: "Neighborhood Party", content: "Come on by this Saturday")

Post.create!(title: "Garage Sale", content: "Come to 32 West Adams St on Sunday")

Post.create!(title: "Learn yoga", content: "Class is on Monday at 5pm for $23")

Post.create!(title: "Fundraiser for local charity", content: "Email me for more information")

Category.create!(name: "Classes")

Category.create!(name: "Events")
