class CreateRevenueData < ActiveRecord::Migration[7.0]
  def change
    create_table :revenue_data do |t|
      t.integer :amount
      t.string :date

      t.timestamps
    end
  end
end
