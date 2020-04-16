class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :cateory
      t.text :description
      t.text :bio
      t.string :image
      t.boolean :approved
      t.boolean :highlighted

      t.timestamps
    end
  end
end
