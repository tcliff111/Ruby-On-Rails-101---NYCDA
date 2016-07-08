class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :author
      t.string :title
      t.string :image_url
      t.text :text

      t.timestamps null: false
    end
  end
end
