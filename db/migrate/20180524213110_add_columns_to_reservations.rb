class AddColumnsToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :start_date, :date
  end
end
