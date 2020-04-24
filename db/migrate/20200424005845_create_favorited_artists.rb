class CreateFavoritedArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :favorited_artists do |t|
      t.string :status
      t.integer :user_id
      t.integer :artist_id

      t.timestamps
    end
  end
end
