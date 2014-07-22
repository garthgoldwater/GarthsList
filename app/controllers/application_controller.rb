class ApplicationController < ActionController::Base
  include Monban::ControllerHelpers
  protect_from_forgery with: :exception

  private

  def require_user_admin
    unless current_user.admin?
      flash[:error] = "You must be an admin to access this section"
      redirect_to :posts
    end
  end
end
