class RegionsController < ApplicationController
  before_action :require_admin, only: [:create]

  def create
    @region = Region.new(region_params)

    if @region.save
      redirect_to :admin
    else
      render :admin
    end
  end

  def index
    @regions = Region.all
  end

  def show
    @region = Region.find(params[:id])
    @categories = Category.all
  end

  private

  def region_params
    params.require(:region).permit(
      :name,
    )
  end
end
