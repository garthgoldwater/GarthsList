class User < ActiveRecord::Base
  has_many :posts

  def owns?(post)
    post.user_id == id
  end
end
