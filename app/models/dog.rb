# == Schema Information
#
# Table name: dogs
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Dog < ApplicationRecord
  has_many :ratings
  belongs_to :user
end
