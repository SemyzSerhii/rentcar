class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,  keys: [:crop_x, :crop_y, :crop_w, :crop_h, :name, :admin, picture_attributes: %i[id url]])
  end
end
