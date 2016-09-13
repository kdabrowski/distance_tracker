class AddTransportTypeToTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :transport_type, :string
  end
end
