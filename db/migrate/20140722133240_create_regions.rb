class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
    add_index :regions, :name, unique: true
  end
end
