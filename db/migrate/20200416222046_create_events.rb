class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :date
      t.string :location
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
