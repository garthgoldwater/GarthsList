class AddRegionToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :region, index: true, null: false, default: 0
  end
end
