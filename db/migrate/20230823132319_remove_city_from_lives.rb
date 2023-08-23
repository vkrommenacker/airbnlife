class RemoveCityFromLives < ActiveRecord::Migration[7.0]
  def up
    remove_column :lives, :city
  end
end
