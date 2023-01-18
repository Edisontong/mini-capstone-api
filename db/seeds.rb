# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

product = Product.new(name: "race car", price: 1.50, image_url: "image.com", description: "a car that goes really fast")
product.save

product = Product.new(name: "bouncy ball", price: 0.50, image_url: "pictureofaball.com", description: "a ball that bounces")
product.save

product = Product.new(name: "dinosaur", price: 2.00, image_url: "dinopics.com", description: "a small plastic dinosaur figure.")
product.save
