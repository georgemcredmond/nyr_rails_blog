# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(firstname: 'George', lastname: 'McRedmond', username: 'george35', password: 'hockey35', favorite_player: 'Dan Girardi')
u2 = User.create(firstname: 'Jack', lastname: 'Kelly', username: 'jkelly26', password: 'hockey35', favorite_player: 'Rick Nash')
u3 = User.create(firstname: 'Eleanor', lastname: 'McRedmond', username: 'ellie26', password: 'hockey35', favorite_player: 'Derek Stepan')