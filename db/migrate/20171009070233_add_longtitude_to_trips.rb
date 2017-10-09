class AddLongtitudeToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :longtitude, :float
  end
end
