class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :subhead
      t.text :body
      t.integer :comments_count

      t.timestamps
    end
  end
end
