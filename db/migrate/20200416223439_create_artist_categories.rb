class CreateArtistCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :artist_categories do |t|
      t.integer :artist_id
      t.integer :categories_id

      t.timestamps
    end
  end
end
