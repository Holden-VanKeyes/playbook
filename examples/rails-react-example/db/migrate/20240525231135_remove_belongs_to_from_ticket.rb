class RemoveBelongsToFromTicket < ActiveRecord::Migration[7.0]
  def change
    remove_column :tickets, :belongs_to, :string
  end
end
