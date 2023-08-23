class RemovePictureUrlFromLives < ActiveRecord::Migration[7.0]
  def up
    remove_column :lives, :picture_url
  end
end
