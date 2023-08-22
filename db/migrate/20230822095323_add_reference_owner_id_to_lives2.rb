class AddReferenceOwnerIdToLives2 < ActiveRecord::Migration[7.0]
  def change
    add_reference :lives, :user, foreign_key: { to_table: :users, column: :owner_id }
  end
end
