class Post < ActiveRecord::Base
  validates :title, null: false
  validates :body, null: false

  belongs_to :region
  belongs_to :category
  belongs_to :user
end
