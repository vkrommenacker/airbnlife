class RemoveColumnFromLives < ActiveRecord::Migration[7.0]
  def update
    remove_column :lives, :picture_url
  end
end
