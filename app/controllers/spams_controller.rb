class SpamsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    post.spam = false
    redirect_to post
  end
end
