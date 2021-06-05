class User < ApplicationRecord
  validates_uniqueness_of :email

  has_many :messages
  has_many :rooms, through: :messages
end
