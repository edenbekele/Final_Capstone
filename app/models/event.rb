class Event < ApplicationRecord
  has_many :artist_events
  has_many :users, through: :artist_events
  has_many :artists, through: :artist_events
end
