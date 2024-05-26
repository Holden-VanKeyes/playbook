class AddAvatarUrlToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :avatar_url, :string
  end
end
