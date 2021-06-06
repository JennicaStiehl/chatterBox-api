require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_uniqueness_of(:email).ignoring_case_sensitivity }
  it { should have_and_belong_to_many(:rooms)}
  it { should have_many :messages}

end
