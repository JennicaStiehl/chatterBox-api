# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([
    {
      email: 'jennica.stiehl@gmail.com',
      username: 'jenn'
    },
    {
      email: 'jo@stiehl.com',
      username: 'jo'
    }
    ])

rooms = Room.create([
  {
    name: 'chartruse'
  },
  {
    name: 'amarillo'
  }
  ])

messages = Message.create([
  {
    user_id: 1,
    room_id: 1,
    content: 'hi'
  },
  {
    user_id: 2,
    room_id: 1,
    content: 'hi back'
  },
  {
    user_id: 1,
    room_id: 1,
    content: 'how are u?'
  },
  {
    user_id: 2,
    room_id: 1,
    content: 'good and you?'
  }
  ])
