class RemoveLatLonFromEmployee < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :lat, :string
    remove_column :employees, :lon, :string
  end
end
