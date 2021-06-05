require 'rails_helper'

RSpec.describe Api::V1::RoomsController, :type => :controller do
  it 'can get a list of rooms' do
    chartruse = Room.create(name: 'chartruse')
    amarillo = Room.create(name: 'amarillo')

    chartruse.save
    amarillo.save

    get '/api/v1/rooms'

    expect(response).to be_successful
      results = JSON.parse(response.body, symbolize_name: true)
    expect(result[0][:name]).to be_a(String)

  end
end
