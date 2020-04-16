class CreateFavortiedArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :favortied_artists do |t|
      t.string :status
      t.integer :user_id
      t.integer :artist_id

      t.timestamps
    end
  end
end
