class Category < ApplicationRecord
  has_many :artist_categories
  has_many :artists, through: :artist_categories
end
