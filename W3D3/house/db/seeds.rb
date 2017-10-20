# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ranch_house = House.create(address: "some ranch")
beach_house = House.create(address: "some beach")

sarah = Person.create(name: "Sarah", house_id:ranch_house.first.id)
jeff = Person.create(name: "Jeff", house_id:beach_house.first.id)
chloe = Person.create(name: "Chloe", house_id:ranch_house.first.id)
bill = Person.create(name: "Bill", house_id:beach_house.first.id)
