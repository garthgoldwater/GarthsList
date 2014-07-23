class User < ActiveRecord::Base
  has_many :posts

  def owns?(post)
    posts.include?(post)
  end
end
