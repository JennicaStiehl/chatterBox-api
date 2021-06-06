require 'rails_helper'

RSpec.describe "as a visitor", type: :request do
  it "I can create an account" do
    new_user = {
      email: 'jenn@gmail.com',
      username: 'jenn'
    }

    post "/api/v1/users", params: new_user
    results = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq(201)
    expect(results[:message]).to eq("Successfully created an account.")
  end
end
