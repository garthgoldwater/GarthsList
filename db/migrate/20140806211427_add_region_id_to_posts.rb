class AddRegionIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :region_id, :integer, null: false
  end
end
