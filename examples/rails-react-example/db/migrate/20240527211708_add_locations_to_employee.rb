class AddLocationsToEmployee < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :city, :string
    add_column :employees, :state, :string
  end
end
