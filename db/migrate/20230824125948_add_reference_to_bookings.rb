class AddReferenceToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :renter, null: false, foreign_key: { to_table: "users" }
  end
end
