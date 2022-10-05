class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # get '/users/:id', to: 'users#profile'

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_many :videogames
  has_one_attached :profilepicture

  validates :email, presence: true
  validates :username, presence: true, uniqueness: true
end
