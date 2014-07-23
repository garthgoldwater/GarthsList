class LandingsController < ApplicationController
  def show
    @regions = Region.all
  end
end
