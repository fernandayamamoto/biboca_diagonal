# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(name: "Harry Potter", email: "harry@gmail.com", password: "123123", password_confirmation: "123123")

Lunchbox.create(name: "Varinha Voldemort", description:"34 centímetros de comprimento, feita de teixo e com núcleo de pena de fênix" price: 35, user_id: 1)
Lunchbox.create(name: "Varinha Harry Potter", description:"feita de azevinho e tem uma pena de fênix em seu núcleo" price: 35, user_id: 2)
Lunchbox.create(name: "Varinha Albus Dumbledore", description:"feita de sabugueiro e tem uma  pelo do rabo de um Testralio em seu núcleo" price: 35, user_id: 3)
