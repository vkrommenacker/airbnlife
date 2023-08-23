class RemoveAddressFromUsers < ActiveRecord::Migration[7.0]
  def up
    remove_column :users, :address
  end
end
