class PostsController < ApplicationController
  before_action :require_ownership, only: [:delete, :edit, :update]

  def index
    @posts = current_user.posts
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @categories = Category.all
    @regions = Region.all
  end

  def create
    @post = current_user.posts.new(post_params)
    @posts = current_user.posts

    if @post.save
      redirect_to :posts
    else
      render :new
    end
  end

  def destroy
    post = Post.find(params[:id])
    if current_user.owns?(post)
      post.destroy
      redirect_to :posts
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    if current_user.owns?(post)
      post.update(post_params)
    end
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(
      :title,
      :price,
      :body,
      :category_id,
      :region_id,
    )
  end
end
