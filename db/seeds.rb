# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :firstname => "Joe", :lastname => "Bloggs", :email => "joebloggs@gmail.com"

u2 = User.create :firstname => "Jane", :lastname => "Doe", :email => "janedoe@gmail.com"

u3 = User.create :firstname => "Test", :lastname => "User", :email => "testuser@gmail.com"


puts "#{ User.count } users"
