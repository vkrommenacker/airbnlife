class User < ApplicationRecord
  has_many :lives, foreign_key: :owner_id
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :birth_date, :street_number, :street_name, :country, presence: true
  validates :email, uniqueness: true, format: { with: /\A.*@.*\.com\z/ }
  validates :phone_number, format: { with: /\A(?:(?:\+|00)33|0)\s*[1-9](?:[\s.-]*\d{2}){4}\z/ }
  validates :encrypted_password, presence: true, length: { minimum: 6 }
end
