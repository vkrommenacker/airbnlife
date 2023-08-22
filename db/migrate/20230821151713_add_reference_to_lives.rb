class AddReferenceToLives < ActiveRecord::Migration[7.0]
  def change
    add_reference :lives, :user, null: false, foreign_key: true
  end
end
