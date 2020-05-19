class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.integer :artist_id
      t.string :name
      t.string :file

      t.timestamps
    end
  end
end
