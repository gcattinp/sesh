Instrument.destroy_all
User.destroy_all
Booking.destroy_all
# Predefined data
genres = ["Rock", "Jazz", "Classical", "Pop", "Country", "Hip Hop", "Blues", "Electronic", "Folk", "R&B"]
cities = ["Madrid", "Paris", "London", "Lima", "Berlin", "Lisbon", "Rome", "Barcelona", "New York", "Tokyo"]

instruments = [
  { name: "Piano", img1: "piano_1.png", img2: "piano_2.png" },
  { name: "Trumpet", img1: "trumpet_1.png", img2: "trumpet_2.png" },
  { name: "Guitar", img1: "guitar_1.png", img2: "guitar_2.png" },
  { name: "Bass", img1: "bass_1.png", img2: "bass_2.png" },
  { name: "Drums", img1: "drum_1.png", img2: "drum_2.png" }
]

user1 = User.create!(
  email: "gcattin97@gmail.com",
  password: '123456',
  password_confirmation: '123456',
  username: "cattin1"
)

user2 = User.create!(
  email: "cattin@skiff.com",
  password: '123456',
  password_confirmation: '123456',
  username: "cattin2"
)

user3 = User.create!(
  email: "g.cattinp@alum.up.edu.pe",
  password: '123456',
  password_confirmation: '123456',
  username: "cattin3"
)

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
      user: [user1, user2, user3].sample # Associate with one of the existing users
    )

    inst.image.attach(io: File.open(image_path), filename: img, content_type: 'image/png')
    inst.save!
  end
end
