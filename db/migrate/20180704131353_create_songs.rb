class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.text :artist
      t.text :name
      t.text :genre
      t.text :description
      t.text :album
      t.text :score
      t.text :rating
      t.timestamps
    end
  end
end
