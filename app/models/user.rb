# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  address         :string
#  latitude        :float
#  longtitude      :float
#  description     :text
#  email           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :text
#

class User < ApplicationRecord
  has_secure_password

  validates :email, :presence => true, :uniqueness => true

  has_many :bookings
  has_many :dogs
  has_many :trips
end
