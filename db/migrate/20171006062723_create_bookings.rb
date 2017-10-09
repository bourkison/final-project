class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :trip_id
      t.datetime :picked_up
      t.datetime :dropped_off
      t.float :latitude
      t.float :longtitude

      t.timestamps
    end
  end
end
