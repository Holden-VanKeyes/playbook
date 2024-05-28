class AddColumnsToEmployee < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :lat, :float
    add_column :employees, :lon, :float
  end
end
