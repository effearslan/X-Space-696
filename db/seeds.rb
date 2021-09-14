# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Space.destroy_all
Booking.destroy_all

user_1 = User.create!(name: "User-1", email: "user1@user.com", password: "password")
user_2 = User.create!(name: "User-2", email: "user2@user.com", password: "password")
user_3 = User.create!(name: "User-3", email: "user3@user.com", password: "password")

space_1 = Space.create!(height: 10, width:10, depth:10, price: 100, location: "Istanbul", name:"Space-1", user: user_1 )
space_2 = Space.create!(height: 20, width:20, depth:20, price: 200, location: "London", name:"Space-2", user: user_2 )
space_3 = Space.create!(height: 30, width:30, depth:30, price: 300, location: "Madagascar", name:"Space-3", user: user_3 )


booking_1 = Booking.create!(travel_date: Date.today, destination: "Paris", total_price: 1000, status: "Approved", user: user_1, space:space_3)
booking_2 = Booking.create!(travel_date: Date.today + 1, destination: "New York", total_price: 2000, status: "Pending", user: user_2, space:space_1)
booking_3 = Booking.create!(travel_date: Date.today + 2, destination: "Beijing", total_price: 3000, status: "Declined", user: user_3, space:space_2)
