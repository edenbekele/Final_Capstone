class Event < ApplicationRecord
  belongs_to :artist

  has_many :artist_events
  has_many :users, through: artist_events
end
