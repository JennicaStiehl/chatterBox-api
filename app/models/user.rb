class User < ApplicationRecord
  validates_uniqueness_of :username
  belongs_to :room
  belongs_to :messages
end
