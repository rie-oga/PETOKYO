# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
   email: 'kou.koottetsu@gmail.com',
   password: 'dogdog'
)

Member.create!(
	name: 'xx',
	nick_name: 'xx',
	email: 'x@x',
	password: 'aaaaaa'
)
Member.create!(
	name: 'yy',
	nick_name: 'yy',
	email: 'y@y',
	password: 'aaaaaa'
)
Member.create!(
	name: 'zz',
	nick_name: 'zz',
	email: 'z@z',
	password: 'aaaaaa'
)

Genre.create!(
	name: 'ドッグラン'
)
Genre.create!(
	name: '公園（ドッグラン無）'
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
Spot.create!(
	name: 'anea cafe(参宮橋)',
	address: '代々木',
	introduction: 'とても広い、犬いっぱい',
	member_id: 1,
	genre_id: 3
)
Spot.create!(
	name: 'anea cafe(中野新橋)',
	address: '中野新橋',
	introduction: 'とても広い、犬いっぱい',
	member_id: 1,
	genre_id: 3
)
Spot.create!(
	name: '新宿中央公園',
	address: '西新宿',
	introduction: 'とても広い、犬いっぱい',
	member_id: 1,
	genre_id: 2
)
Spot.create!(
	name: 'moazan',
	address: '西新宿',
	introduction: 'とても広い、犬いっぱい',
	member_id: 1,
	genre_id: 3
)
