class CreateArtistEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :artist_events do |t|
      t.string :status
      t.integer :user_id
      t.integer :artist_id
      t.integer :event_id

      t.timestamps
    end
  end
end
