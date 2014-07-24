class Image < ActiveRecord::Base
  validates :url, presence: true, image_url: true
  validates :post_id, presence: true
  belongs_to :post
end
