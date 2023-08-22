class RemoverColumnOwnerIdFromLives < ActiveRecord::Migration[7.0]
  def up
    remove_column :lives, :owner_id
  end
end
