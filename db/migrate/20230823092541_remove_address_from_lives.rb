class RemoveAddressFromLives < ActiveRecord::Migration[7.0]
  def up
    remove_column :lives, :address
  end
end
