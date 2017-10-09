class AddLatitudeToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :latitude, :float
  end
end
