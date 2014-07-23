class SpamsController < ApplicationController
  before_action :require_admin, only: [:create]
  def create
    post = Post.find(params[:post_id])
    post.spam = true
    post.save
    redirect_to post
  end

  def destroy
    post = Post.find(params[:post_id])
    post.spam = false
    post.save
    redirect_to post
  end

  def index
  end
end
