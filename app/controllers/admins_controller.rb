class AdminsController < ApplicationController
  before_action :require_user_admin

  def show
    @region = Region.new
    @regions = Region.all
  end
end
