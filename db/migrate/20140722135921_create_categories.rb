class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.text :name, null: false

      t.timestamps null: false
    end
    add_index :categories, :name, unique: true
  end
end
