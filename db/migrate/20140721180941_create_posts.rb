class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :price
      t.references :user, index: true, null: false

      t.timestamps
    end
    add_index :posts, :title
    add_index :posts, :body
    add_index :posts, :price
  end
end
