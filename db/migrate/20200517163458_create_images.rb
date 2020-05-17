class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.integer :artist_id
      t.string :image

      t.timestamps
    end
  end
end
