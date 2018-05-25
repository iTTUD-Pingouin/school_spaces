class RenameCityColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :spaces, :city, :title
  end
end
