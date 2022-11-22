# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying users..."
User.destroy_all
puts "Users destroyed!"
puts "Creating new users..."
User.create!(first_name: "teste", last_name: "teste", email: "teste@teste.com", password: "testeteste")
puts "User created!"
