require "open-uri"

Instrument.destroy_all
User.destroy_all
Booking.destroy_all


genres = ["Rock", "Jazz", "Classical", "Pop", "Country", "Hip Hop", "Blues", "Electronic", "Folk", "R&B"]
cities = ["Madrid", "Paris", "London", "Lima", "Berlin", "Lisbon", "Rome", "Barcelona", "New York", "Tokyo"]

instruments = [
  { name: "Piano", img1: "https://res.cloudinary.com/dzm55bol0/image/upload/v1692801435/development/y8phly5ur351v1jpmwc6m3ulmovc.png",
    img2: "https://res.cloudinary.com/dzm55bol0/image/upload/v1692801433/development/bupvvbh8939rvin2an7pc4imuz4k.png" },
  { name: "Trumpet", img1: "https://res.cloudinary.com/dzm55bol0/image/upload/v1692801438/development/n9q945w60zqkllz6sirrhm9lwib4.png",
    img2: "https://res.cloudinary.com/dzm55bol0/image/upload/v1692801438/development/n9q945w60zqkllz6sirrhm9lwib4.png" },
  { name: "Guitar", img1: "https://res.cloudinary.com/dzm55bol0/image/upload/v1692801444/development/kneki262eb1eox937oolk7sgydrz.png",
    img2: "https://res.cloudinary.com/dzm55bol0/image/upload/v1692801442/development/d4e0i44pwd58bx2d0y8a43x1ym5p.png" },
  { name: "Bass", img1: "https://res.cloudinary.com/dzm55bol0/image/upload/v1692801446/development/a48h0n9c216kaf8rt2to488jkpmn.png",
    img2: "https://res.cloudinary.com/dzm55bol0/image/upload/v1692801444/development/kneki262eb1eox937oolk7sgydrz.png" },
  { name: "Drums", img1: "https://res.cloudinary.com/dzm55bol0/image/upload/v1692801449/development/nwqv5ozma5j9s8rmtpgonqgqx4gf.png",
    img2: "https://res.cloudinary.com/dzm55bol0/image/upload/v1692801448/development/8uzvjbkegzk5khi5qoctz44zesim.png" }
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
    img_url = i.zero? ? instrument[:img1] : instrument[:img2]

    inst = Instrument.new(
      name: instrument[:name],
      description: Faker::Lorem.sentence(word_count: 5),
      city: cities.sample,
      genre: genres.sample,
      available: rand(20..200),
      price: rand(20..200),
      user: [user1, user2, user3].sample
    )

    file = URI.open(img_url)
    inst.photo.attach(io: file, filename: File.basename(img_url), content_type: 'image/png')
    inst.save!
  end
end
