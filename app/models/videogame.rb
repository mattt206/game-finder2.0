class Videogame < ApplicationRecord
  has_one_attached :gamepicture
  belongs_to :user

  validates :title, :price, :condition, :platform, :status, presence: true
  validates :description, presence: true, length: { minimum: 8 }
end
