class AddOwnerIdtoLives < ActiveRecord::Migration[7.0]
  def change
    add_column :lives, :owner_id, :integer
    add_foreign_key :lives, :users, column: :owner_id
  end
end
