# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
  email: 'kou.kotetsu@gmail.com',
  password: 'dogdog'
)
Member.create!(
  nick_name: '水',
  email: 'a@a',
  password: 'aaaaaa',
  encrypted_password: 'aaaaaa'
)
Member.create!(
  nick_name: '水水',
  email: 'b@b',
  password: 'aaaaaa',
  encrypted_password: 'aaaaaa'
)
Genre.create!(
  name: 'カフェ / ランチ'
)
Genre.create!(
  name: 'ディナー'
)
Genre.create!(
  name: 'ドッグラン'
)
Genre.create!(
  name: 'ドッグラン(公園無)'
)
