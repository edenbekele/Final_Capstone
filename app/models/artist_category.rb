class ArtistCategory < ApplicationRecord
  belongs_to :artist
  belongs_to :categories
end
