class AddSpamToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :spam, :boolean, default: false, null: false
  end
end
