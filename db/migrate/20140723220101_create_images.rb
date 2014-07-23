class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url, index: true, null: false
      t.integer :post_id, null: false

      t.timestamps null: false
    end
    add_index :images, :post_id
  end
end
