class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      redirect_to :posts_index
    else
      render :posts_index
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
