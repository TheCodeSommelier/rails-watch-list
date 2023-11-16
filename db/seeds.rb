# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

puts "Destroying all records..."
Movie.destroy_all

puts "Seeding..."

10.times do
  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
    poster_url: "https://source.unsplash.com/random",
    rating: 6.9
  )
end

puts "Finished!!"
