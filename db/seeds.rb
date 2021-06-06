require 'faker'

users = 5.times.map do
  User.create(
    username: Faker::Name.unique.name,
    email: Faker::Internet.unique.email,
  )
end

rooms = 5.times.map do
  Room.create(
    name: Faker::Name.unique.name,
  )
end

messages = 10.times.map do
  Message.create(
    content: Faker::Lorem.sentence,
    user: users.sample,
    room: rooms.sample
  )
end
