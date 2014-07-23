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

  def require_ownership
    unless current_user.owns?(current_post)
      flash[:error] = "You must own a post to change it."
      redirect_to :landing
    end
  end
end
