# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Kid.destroy_all()

rogue = Kid.create(name: "Rogue", age: 2)
kahlan = Kid.create(name: "Kahlan", age: 10)
Comment.create(kid_id:rogue[:id], content: "Bless You Rescue")
Comment.create(kid_id:rogue[:id], content: "no no no no no")
Comment.create(kid_id:kahlan[:id], content: "I Eat Toes")
Comment.create(kid_id:kahlan[:id], content: "mmmmmm Taste so good")