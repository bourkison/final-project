# == Schema Information
#
# Table name: trips
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Trip < ApplicationRecord
  has_many :bookings
  belongs_to :user
end
