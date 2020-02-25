# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Food.destroy_all
Restaurant.destroy_all
user1 = User.create(name: "Jason")
user2 = User.create(name: "Paul")
user3 = User.create(name: "Instuctor Paul")
user4 = User.create(name: "Jenny")
user5 = User.create(name: "Joseph")

food1 = Food.create(name: "water")
food2 = Food.create(name: "Fried rice")
food3 = Food.create(name: "Coffee")
food4 = Food.create(name: "French Fries")
food5 = Food.create(name: "shrimp dish")


rest1 = Restaurant.create(location: "Fairfax", name: "rest1", user_id: user1.id , food_id: food1.id)
rest2 = Restaurant.create(location: "D.C", name: "rest2", user_id: user2.id , food_id: food2.id)
rest3 = Restaurant.create(location: "Centreville", name: "rest3", user_id: user2.id , food_id: food3.id)
rest4 = Restaurant.create(location: "Manasas", name: "rest4", user_id: user4.id , food_id: food4.id)
rest5 = Restaurant.create(location: "Sterling", name: "rest5", user_id: user5.id , food_id: food1.id)
