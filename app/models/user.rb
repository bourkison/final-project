# == Schema Information
#
# Table name: users
#
#  id                    :integer          not null, primary key
#  name                  :string
#  address               :string
#  latitude              :float
#  longtitude            :float
#  description           :text
#  email                 :string
#  password              :string
#  password_confirmation :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class User < ApplicationRecord
  has_secure_password

  has_many :bookings
  has_many :dogs
  has_many :trips
end
