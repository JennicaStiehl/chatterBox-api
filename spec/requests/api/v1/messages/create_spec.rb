require 'rails_helper'

RSpec.describe "as an acount holder", type: :request do
  it "I can create a new message" do
    turquoise = Room.create(name: "turquoise")
    jenna = User.create(email: 'jenna@gmail.com', username: 'jenna')

    post '/api/v1/rooms/:room_id/messages', params: {
      :room => turquoise.id,
      :user => jenna.id,
      :content => "hi, whats new"
    }

    expect(response).to be_successful

    results = JSON.parse(response.body, symbolize_names: true)
    message = Message.last

    expect(response.status).to eq(200)
    expect(message[:content]).to eq("hi, whats new")
  end
end
