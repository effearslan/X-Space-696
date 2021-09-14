class RemoveTravelDateAndDestinationFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :travel_date, :date
    remove_column :bookings, :destination, :string
  end
end
