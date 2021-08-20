# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Father.destroy_all()
Kid.destroy_all()

Father.create(name: "Joshua Blackham")
rogue = Kid.create(name: "Rogue", age: 2)
Comment.create(kid_id:rogue[:id], content: "Bless You Rescue")