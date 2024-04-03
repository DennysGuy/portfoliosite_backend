class CreateTetrisBlogs < ActiveRecord::Migration[7.1]
  def change
    create_table :tetris_blogs do |t|
      t.string :title
      t.string :body
      t.string :author
      t.string :avatar
      t.string :date

      t.timestamps
    end
  end
end