class User < ApplicationRecord
  has_many :bookings
  has_many :dogs
  has_many :trips
end
