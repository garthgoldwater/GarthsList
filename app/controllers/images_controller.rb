class ImagesController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @image = Image.new
  end

  def create
    @post = Post.find(params[:post_id])
    @image = @post.images.new(image_params)

    if @image.save
      redirect_to [:new, @post, :image]
    else
      render :new
    end
  end

  def destroy
    @post = current_user.posts.find(params[:post_id])
    image = @post.images.find(params[:id])
    image.destroy
    redirect_to [:new, @post, :image]
  end

  private

  def image_params
    params.require(:image).permit(
      :url,
    )
  end
end
