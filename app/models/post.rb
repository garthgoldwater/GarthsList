class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
  validates :user, presence: true
  belongs_to :user
  belongs_to :category
  belongs_to :region
  has_many :images

  delegate :name, to: :category, prefix: true
  delegate :name, to: :region, prefix: true
  delegate :email, to: :user, prefix: true

  def self.spam
    where(spam: true).order(updated_at: :desc)
  end

  def mark_spam
    update(spam: true)
  end

  def mark_not_spam
    update(spam: false)

  def self.recent_posts_for_region(region)
    where(region_id: region.id).order(created_at: :desc)
  end
end
