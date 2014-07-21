class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :price, null: false, default: 0
      t.references :user, index: true, null: false

      t.timestamps null: false
    end
  end
end
