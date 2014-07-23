class SpamsController < ApplicationController
  before_action :require_admin, only: [:create]
  def create
    post = Post.find(params[:post_id])
    post.spam = false
    redirect_to post
  end

  def index
    @posts_marked_spam = Post.find_by(spam: true)
  end
end
