class AddOtherColumnsToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :end_date, :date
  end
end
