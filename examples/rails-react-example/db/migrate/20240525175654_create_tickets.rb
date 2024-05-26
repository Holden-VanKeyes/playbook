class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :category
      t.string :error_type
      t.string :description
      t.string :belongs_to
      t.string :employee

      t.timestamps
    end
  end
end
