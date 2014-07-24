class SpamsController < ApplicationController
  before_action :require_admin, only: [:destroy, :index]

  def create
    post = Post.find(params[:post_id])
    post.mark_spam
    redirect_to post
  end

  def destroy
    post = Post.find(params[:post_id])
    post.mark_not_spam
    redirect_to post
  end

  def index
  end
end
