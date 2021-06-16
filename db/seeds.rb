# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
product1 = Product.create(name: "Widget", price: 13, image_url: "", description: "Typical widget thingy.")
product2 = Product.create(name: "Foobar", price: 37, image_url: "", description: "Better than your average foobar!")
product3 = Product.create(name: "Gadget", price: 6, image_url: "", description: "Indispensible tool for your home.")
