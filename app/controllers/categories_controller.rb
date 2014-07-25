class CategoriesController < ApplicationController
  before_action :require_admin, only: [:create]

  def index
    @category = Category.new
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @posts = @category.posts.page(params[:page])
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to :categories
    else
      render :index
    end
  end

  private

  def category_params
    params.require(:category).permit(
      :name
    )
  end
end
