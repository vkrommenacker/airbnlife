class Life < ApplicationRecord
  has_many :bookings, foreign_key: :life_id, dependent: :destroy
  has_one_attached :photo
  belongs_to :owner, class_name: "User"
  attr_accessor :street_number, :street_name, :city, :country

  validates :price_per_day, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :title, presence: true, length: { maximum: 40 }
  validates :job_title, presence: true
end
