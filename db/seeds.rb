# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

asia_food = Restaurant.create(name: 'Asian Food')
salad = Restaurant.create(name: 'Happy Salad')

thai_fish = Manu.create(
  dish_name: 'Thai Fish', 
  description: 'very spicy fish', 
  restaurant: asia_food)

fried_shrimp = Manu.create(
  dish_name: 'Fried Shrimp', 
  description: 'very crippy shrimp', 
  restaurant: asia_food)

veg_salad = Manu.create(
  dish_name: 'Vegetarian Salad', 
  description: 'super fresh salad for morning', 
  restaurant: salad)

TB1 = Table.create(
  restaurant: asia_food,
  number: 1,
  )

TB2 = Table.create(
  restaurant: asia_food,
  number: 2,
  )

