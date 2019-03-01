 99.times do |n|
 	first_name = Faker::Name.first_name
 	last_name = Faker::Name.last_name
 	user_name = Faker::Internet.user_name
 	user_name = "#{user_name}_#{n}"
 	email = Faker::Internet.email
 	password = "123456"
 	User.create(first_name: first_name, 
 			last_name: last_name, 
 			user_name: user_name, 
 			email: email, 
 			password: password, 
 			password_confirmation: password)
 end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
