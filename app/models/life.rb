class Life < ApplicationRecord
  has_one_attached :photo
  belongs_to :owner, class_name: "User"
  attr_accessor :street_number, :street_name, :city, :country

  validates :price_per_day, presence: true, numericality: { greater_than: 0 }
  validates :description, :picture_url, presence: true
  validates :title, presence: true, length: { maximum: 40 }
end
