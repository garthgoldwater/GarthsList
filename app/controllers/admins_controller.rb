class AdminsController < ApplicationController
  before_action :require_admin

  def show
    @region = Region.new
    @regions = Region.all
    @category = Category.new
    @categories = Category.all
  end
end
