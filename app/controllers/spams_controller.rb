class SpamsController < ApplicationController
  before_action :require_admin, only: [:destroy, :index]

  def create
    post = Post.find(params[:post_id])
    mark_spam(post)
    redirect_to post
  end

  def destroy
    post = Post.find(params[:post_id])
    mark_not_spam(post)
    redirect_to post
  end

  def index
  end

  private

  def mark_not_spam(post)
    post.spam = false
    post.save
  end

  def mark_spam(post)
    post.spam = true
    post.save
  end
  
end
