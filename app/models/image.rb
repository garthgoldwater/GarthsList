class Image < ActiveRecord::Base
  validates :url, presence: true
  validates :post_id, presence: true
  belongs_to :post
end
