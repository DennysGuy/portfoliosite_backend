class CreateSongs < ActiveRecord::Migration[7.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :albumart
      t.string :description
      t.string :genre
      t.string :songfile

      t.timestamps
    end
  end
end
