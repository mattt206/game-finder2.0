class Videogame < ApplicationRecord
  has_one_attached :gamepicture
  belongs_to :user
  has_many :bookings

  validates :title, :price, :condition, :platform, :status, presence: true
  validates :description, presence: true, length: { minimum: 8, maximum: 120 }
end

