class RemoveEmployeeToFromTicket < ActiveRecord::Migration[7.0]
  def change
    remove_column :tickets, :employee, :string
  end
end
