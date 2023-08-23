# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Booking.destroy_all
Instrument.destroy_all
User.destroy_all

user = User.create!(email: "a@gmail.com", password: 123456, username: "user1")

genres = ["Rock", "Jazz", "Classical", "Pop", "Country", "Hip Hop", "Blues", "Electronic", "Folk", "R&B"]
cities = ["Madrid", "Paris", "London"]

Instrument.create!(
  name: "Piano",
  description: Faker::Lorem.sentence(word_count: 5),
  city: cities.sample,
  image: "https://res.cloudinary.com/dzm55bol0/image/upload/v1692698144/piano_2_zvn2zw.png",
  genre: genres.sample,
  available: rand(20..200),
  price: rand(20..200),
  user: user
)

Instrument.create!(
  name: "Piano",
  description: Faker::Lorem.sentence(word_count: 5),
  city: cities.sample,
  image: "https://res.cloudinary.com/dzm55bol0/image/upload/v1692698144/piano_1_x8hd1d.png",
  genre: genres.sample,
  available: rand(20..200),
  price: rand(20..200),
  user: user
)

Instrument.create!(
  name: "Trumpet",
  description: Faker::Lorem.sentence(word_count: 5),
  city: cities.sample,
  image: "https://res.cloudinary.com/dzm55bol0/image/upload/v1692698144/trumpet_2_epy3oj.png",
  genre: genres.sample,
  available: rand(20..200),
  price: rand(20..200),
  user: user
)

Instrument.create!(
  name: "Trumpet",
  description: Faker::Lorem.sentence(word_count: 5),
  city: cities.sample,
  image: "https://res.cloudinary.com/dzm55bol0/image/upload/v1692698144/trumpet_1_wwpwkl.png",
  genre: genres.sample,
  available: rand(20..200),
  price: rand(20..200),
  user: user
)

Instrument.create!(
  name: "Guitar",
  description: Faker::Lorem.sentence(word_count: 5),
  city: cities.sample,
  image: "https://res.cloudinary.com/dzm55bol0/image/upload/v1692698143/guitar_1_ngvizp.png",
  genre: genres.sample,
  available: rand(20..200),
  price: rand(20..200),
  user: user
)

Instrument.create!(
  name: "Guitar",
  description: Faker::Lorem.sentence(word_count: 5),
  city: cities.sample,
  image: "https://res.cloudinary.com/dzm55bol0/image/upload/v1692698143/guitar_2_ca6j10.png",
  genre: genres.sample,
  available: rand(20..200),
  price: rand(20..200),
  user: user
)

Instrument.create!(
  name: "Bass",
  description: Faker::Lorem.sentence(word_count: 5),
  city: cities.sample,
  image: "https://res.cloudinary.com/dzm55bol0/image/upload/v1692698143/bass_2_zvy13e.png",
  genre: genres.sample,
  available: rand(20..200),
  price: rand(20..200),
  user: user
)

Instrument.create!(
  name: "Bass",
  description: Faker::Lorem.sentence(word_count: 5),
  city: cities.sample,
  image: "https://res.cloudinary.com/dzm55bol0/image/upload/v1692698143/bass_1_k4zyza.png",
  genre: genres.sample,
  available: rand(20..200),
  price: rand(20..200),
  user: user
)

Instrument.create!(
  name: "Drums",
  description: Faker::Lorem.sentence(word_count: 5),
  city: cities.sample,
  image: "https://res.cloudinary.com/dzm55bol0/image/upload/v1692698143/drum_1_mvl24h.png",
  genre: genres.sample,
  available: rand(20..200),
  price: rand(20..200),
  user: user
)

Instrument.create!(
  name: "Drums",
  description: Faker::Lorem.sentence(word_count: 5),
  city: cities.sample,
  image: "https://res.cloudinary.com/dzm55bol0/image/upload/v1692698143/drum_2_xmultf.png",
  genre: genres.sample,
  available: rand(20..200),
  price: rand(20..200),
  user: user
)
