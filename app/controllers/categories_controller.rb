class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @user = current_user
  end

  def new
    @category = Category.new
  end

  def create
    redirect_to :categories
  end

  def show
    @category = Category.find(params[:id])
    @posts = @category.posts
  end

  private

  def category_params
    params.require(:category).permit(
      :name
    )
  end
end
