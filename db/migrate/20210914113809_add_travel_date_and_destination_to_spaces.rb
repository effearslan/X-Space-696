class AddTravelDateAndDestinationToSpaces < ActiveRecord::Migration[6.0]
  def change
    add_column :spaces, :destination, :string
    add_column :spaces, :travel_date, :date
  end
end
