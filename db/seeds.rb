# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(
  username: 'DmytroK',
  email: 'dmytrokomisaryk@gmail.com',
  password: 'Moder2017',
  role: User.roles[:moderator]
)

[:a, 2, 3, 4, 5, 6, 7, 8, 9, 10, :j, :q, :k].each do |k|
  [:club, :diamond, :heart, :spade].each do |v|
    Card.create(kind: k, value: v)
  end
end