class AddAddressToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :address, :text
  end
end
