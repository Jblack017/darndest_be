# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Kid.destroy_all()

rogue = Kid.create(name: "Rogue", nickname: "Pierogi", birthday: Date.new(2019, 3, 25))
kahlan = Kid.create(name: "Kahlan", nickname: "Bubba", birthday: Date.new(2011, 6, 24))
george = Kid.create(name: "George", nickname: "Buddy", birthday: Date.new(2021, 8, 29))
rocket = Kid.create(name: "Rocket", nickname: "Rocket, Rocket, Rocket", birthday: Date.new(2023, 8, 29))
Comment.create(kid: rogue, content: "Bless You Rescue")
Comment.create(kid: rogue, content: "no no no no no")
Comment.create(kid: rogue, content: "I Eat Toes")
Comment.create(kid: kahlan, content: "mmmmmm Taste so good")