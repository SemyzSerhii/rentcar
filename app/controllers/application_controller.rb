class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,  keys: [ :name, :admin, :avatar, :crop_x, :crop_y, :crop_w, :crop_h])
    devise_parameter_sanitizer.permit(:account_update,  keys: [ :name, :admin, :avatar, :crop_x, :crop_y, :crop_w, :crop_h])
  end
end
