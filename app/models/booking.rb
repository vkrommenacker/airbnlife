class Booking < ApplicationRecord
  belongs_to :life
  belongs_to :renter, class_name: "User"
end
