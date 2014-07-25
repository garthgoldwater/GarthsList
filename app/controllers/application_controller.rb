class ApplicationController < ActionController::Base
  include Monban::ControllerHelpers
  protect_from_forgery with: :exception

  private

  def require_admin
    unless current_user.admin?
      flash[:error] = "You must be an admin to access this section"
      redirect_to :landing
    end
  end

  def make_paginatable(collection_proxy)
    Kaminari.paginate_array(collection_proxy).page(params[:page])
  end
end
