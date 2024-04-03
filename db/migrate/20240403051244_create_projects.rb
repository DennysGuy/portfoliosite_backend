class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :platform
      t.string :image
      t.string :alt_id
      t.string :description
      t.string :githublink
      t.string :blogspage

      t.timestamps
    end
  end
end
