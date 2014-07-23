class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
  validates :user, presence: true
  belongs_to :user
  belongs_to :category
  belongs_to :region
end
