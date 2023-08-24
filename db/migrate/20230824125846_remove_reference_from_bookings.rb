class RemoveReferenceFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_reference :bookings, :user, foreign_key: true
  end
end
