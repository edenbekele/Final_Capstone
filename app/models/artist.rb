class Artist < ApplicationRecord
  has_many :favorited_artists
  has_many :users, through: :favorited_artists
  has_many :events

  has_many artist_categories
  has_many :categories, through: :artist_categories

  has_many :artist_events
end
