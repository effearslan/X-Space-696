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

jack = User.create!(name: "Jack", email: "jack@user.com", password: "password")
hayri = User.create!(name: "Hayri", email: "hayri@user.com", password: "password")
penelope = User.create!(name: "Penelope", email: "penelope@user.com", password: "password")
ronaldo = User.create!(name: "Ronaldo", email: "ronaldo@user.com", password: "password")
zeynep = User.create!(name: "Zeynep", email: "zeynep@user.com", password: "password")
tilda = User.create!(name: "Tilda", email: "tilda@user.com", password: "password")
