require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validates_uniqueness_of(:username)}
  it { should belong_to(:room)}
end
