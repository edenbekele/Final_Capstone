class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :events
  has_many :favorited_artists
  has_many :artists, through: :favorited_artists

  has_many :artist_events
end
