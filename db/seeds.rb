# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Clear existing data for instruments
Instrument.destroy_all

# Fetch the first 3 users

# Predefined data
genres = ["Rock", "Jazz", "Classical", "Pop", "Country", "Hip Hop", "Blues", "Electronic", "Folk", "R&B"]
cities = ["Madrid", "Paris", "London", "Lima", "Berlin", "Lisbon", "Rome"]

instruments = [
  { name: "Piano", img1: "piano_1.png", img2: "piano_2.png" },
  { name: "Trumpet", img1: "trumpet_1.png", img2: "trumpet_2.png" },
  { name: "Guitar", img1: "guitar_1.png", img2: "guitar_2.png" },
  { name: "Bass", img1: "bass_1.png", img2: "bass_2.png" },
  { name: "Drums", img1: "drum_1.png", img2: "drum_2.png" }
]

# Seed the instruments
instruments.each do |instrument|
  2.times do |i|
    img = i.zero? ? instrument[:img1] : instrument[:img2]
    image_path = Rails.root.join('db', 'seed_images', img)

    inst = Instrument.new(
      name: instrument[:name],
      description: Faker::Lorem.sentence(word_count: 5),
      city: cities.sample,
      genre: genres.sample,
      available: rand(20..200),
      price: rand(20..200),
      user_id: rand(1..3) # Associate with one of the existing users
    )

    inst.image.attach(io: File.open(image_path), filename: img, content_type: 'image/png')
    inst.save!
  end
end
