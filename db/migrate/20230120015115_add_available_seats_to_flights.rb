class AddAvailableSeatsToFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :available_seats, :integer, default: 100
  end
end
