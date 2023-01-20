class AddFlightIdToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :flight_id, :integer
    add_index :bookings, :flight_id
  end
end
