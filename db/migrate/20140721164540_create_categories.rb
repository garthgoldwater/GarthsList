class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, null: false, unique: true

      t.timestamps null: false
    end
    add_index :categories, :name
  end
end
