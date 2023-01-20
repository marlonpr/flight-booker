class AddPassengerCountToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :passenger_count, :integer
  end
end
