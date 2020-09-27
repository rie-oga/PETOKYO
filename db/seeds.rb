# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
   email: 'kouuuuu.kotetsu@gmail.com',
   password: 'dogdog'
)

Member.create!(
	email: 'aaaaa@a',
	password: 'aaaaaa'
)

Genre.create!(
	name: 'ドッグラン'
)
Genre.create!(
	name: 'ドッグカフェ'
)

Spot.create!(
	name: '代々木公園',
	address: '代々木',
	introduction: 'とても広い、犬いっぱい',
	member_id: 1,
	genre_id: 1
)

Dog.create!(
	kind: 'パピヨン',
	age: '3',
	member_id: 1
)
