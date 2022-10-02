class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :videogame

  validates :star_date, :end_date, presence: true

end
