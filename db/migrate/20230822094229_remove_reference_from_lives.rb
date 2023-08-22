class RemoveReferenceFromLives < ActiveRecord::Migration[7.0]
  def change
    remove_reference :lives, :user, null: false, foreign_key: true
  end
end
