# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  Post.create(
    title: Faker::TvShows::Suits.character,
    image: 'https://cdn.pixabay.com/photo/2017/12/27/14/02/friends-3042751__340.jpg',
    content: Faker::TvShows::Suits.quote
  )
end
