class User < ActiveRecord::Base
  has_many :posts

  def owns?(post)
    if admin?
      true
    else
      post.user_id == id
    end
  end

  def authorized_posts
    if admin?
      Post.all
    else
      posts.find(post_id)
    end
  end
end
