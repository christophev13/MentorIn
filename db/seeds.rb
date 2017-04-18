# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bob = User.new(email: "bob@bob.com", password: "passwordx", encrypted_password:"xxx", last_name: "Boby", first_name:"Bob", industry:"Accommodations", profile:"Expert Professional", biography: "was born")
bob.save

john = User.new(email: "john@john.com", password: "passwordx", encrypted_password:"xxx", last_name: "johny", first_name:"john", industry:"Accommodations", profile:"College Freshman", biography: "was born")
john.save

meet = Meeting.new(title: "mentorship sobre blabla", description: "blabla", nb_max_participant: 5, local: "ali", profile_wanted: "College Freshman", date: "20/05/2020")
meet.user = bob
meet.save

bk = Booking.new(motivations: "blabla")
bk.user = john
bk.meeting = meet
bk.save

