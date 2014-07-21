class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      render @post
    end
  end

  private

  def post_params
    params.require(:post).permit(
      :title,
      :price,
      :body,
    )
  end
end
