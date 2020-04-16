class User < ApplicationRecord
  has_many :events
  has_many :favorited_artists
  has_many :artists, through: :favorited_artists

  has_many :artist_events
end
