class PostsController < ApplicationController
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
      redirect_to [:new, @post, :image]
    else
      render :new
    end
  end

  def destroy
    if current_user.admin?
      post = Post.find(params[:id])
    else
      post = current_user.posts.find(params[:id])
    end
    post.destroy
    redirect_to :posts
  end

  def edit
    @post = current_user.posts.find(params[:id])
  end

  def update
    if current_user.admin?
      post = Post.find(params[:id])
    else
      post = current_user.posts.find(params[:id])
    end
    post.update(post_params)
    redirect_to post
  end

  def edit
    @post = Post.find(params[:id])
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
