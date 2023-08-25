class Booking < ApplicationRecord
  belongs_to :life
  belongs_to :renter, class_name: "User"

  validate :start_date_before_end_date

  private

  def start_date_before_end_date
    if start_date && end_date && start_date >= end_date
      errors.add(:base, "La date de début doit être inférieure à la date de fin")
    end
  end
end
