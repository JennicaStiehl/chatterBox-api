require 'rails_helper'

RSpec.describe "as a user", type: :request do
  it 'I can get a list of rooms' do
    chartruse = Room.create(name: 'chartruse')
    amarillo = Room.create(name: 'amarillo')

    get '/api/v1/rooms'
    results = JSON.parse(response.body, symbolize_name: true)
# binding.pry
    expect(response).to be_successful
    expect(results[0]["name"]).to be_a(String)
  end
end
