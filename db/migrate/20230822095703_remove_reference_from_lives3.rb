class RemoveReferenceFromLives3 < ActiveRecord::Migration[7.0]
  def change
    remove_reference :lives, :user, foreign_key: true
  end
end
