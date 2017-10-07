# == Schema Information
#
# Table name: bookings
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  trip_id     :integer
#  picked_up   :datetime
#  dropped_off :datetime
#  latitude    :float
#  longtitude  :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :trip
end
