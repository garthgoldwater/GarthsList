class CategoriesController < ApplicationController
  def index
    @category = Category.new
    @categories = Category.all
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to :categories
    else
      render :categories
    end
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
