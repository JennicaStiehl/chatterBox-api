require 'rails_helper'

RSpec.describe "as an acount holder", type: :request do
  it "I can create a new chat room" do
    new_room = {
      name: "turquoise"
    }

    post "/api/v1/rooms", params: new_room

    expect(response).to be_successful
    
    results = JSON.parse(response.body, symbolize_names: true)
    room = Room.last

    expect(response.status).to eq(200)
    expect(room[:name]).to eq("turquoise")
  end
end
