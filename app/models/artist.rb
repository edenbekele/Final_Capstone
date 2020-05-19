class Artist < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true

  has_many :favorited_artists
  has_many :users, through: :favorited_artists
  has_many :events

  has_many :artist_categories
  has_many :categories, through: :artist_categories

  has_many :artist_events
  has_many :images
  has_many :songs
end
