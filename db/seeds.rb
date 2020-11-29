# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

event = Event.create(title: "Learn SE Asian Cuisine", date: "12/1/2020", time:" 6:30PM PT", location: "zoom adress---");
event = Event.create(title: "Learn South American Cuisine", date: "12/8/2020", time:" 6:30PM PT", location: "zoom adress---");

user = User.create( email: "relationshiptest@too.com" , username: "bernard-alfred", password: "testing")
user = User.create( email: "ricky@me.com", username: "ricky305", password: "threeohfive")


puts "Seeded database"