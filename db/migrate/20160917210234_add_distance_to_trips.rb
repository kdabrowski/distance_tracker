class AddDistanceToTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :distance, :float, precision: 2
  end
end
