class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
  validates :user, presence: true
  belongs_to :user
  belongs_to :category
  belongs_to :region

  delegate :name, to: :category, prefix: true
  delegate :name, to: :region, prefix: true
  delegate :email, to: :user, prefix: true
end
