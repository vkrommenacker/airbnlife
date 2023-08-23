class Life < ApplicationRecord
  belongs_to :owner, class_name: "User"

  validates :price_per_day, :description, :picture_url, presence: true
  validates :title, presence: true, length: { maximum: 40 }
end
