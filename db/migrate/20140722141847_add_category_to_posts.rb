class AddCategoryToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :category, index: true, unique: true, null: false
  end
end
