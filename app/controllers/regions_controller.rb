class RegionsController < ApplicationController
  before_action :require_user_admin

  def create
    @region = Region.new(region_params)

    if @region.save
      redirect_to :admin
    else
      render :admin
    end
  end

  private

  def region_params
    params.require(:region).permit(
      :name,
    )
  end
end
