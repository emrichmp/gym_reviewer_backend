# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jdi = Gym.create(name: "JDI Barbell", description: "Powerlifing and Weightlifting Gym", location: "Harlem")
elite = Gym.create(name: "Elite Barbell", description: "Powerlifting and Bodybuilding gym", location: "Brooklyn")
midcity = Gym.create(name: "Mid City Gym", description: "dimly lit Body Building gym", location: "Midtown Manhattan")