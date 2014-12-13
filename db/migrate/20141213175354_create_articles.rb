class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.string :author
      t.string :slug
      t.text :media

      t.timestamps
    end
  end
end
