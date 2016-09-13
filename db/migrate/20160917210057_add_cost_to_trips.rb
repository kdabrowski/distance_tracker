class AddCostToTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :cost, :float, precision: 2
  end
end
