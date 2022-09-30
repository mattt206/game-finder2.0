class Videogame < ApplicationRecord
  has_one_attached :gamepicture
  belongs_to :user
  
end
