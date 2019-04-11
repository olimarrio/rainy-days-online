# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Product.create(name: "Vase", description: "Hand made vase", price: 20, category: "Pottery")
Product.create(name: "Candle holder", description: "Lovely candle", price: 15, category: "Pottery")
Product.create(name: "Pillow", description: "Chicken pillow", price: 25, category: "Pillow")
