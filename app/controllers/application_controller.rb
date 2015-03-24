class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!

    # Devise Parameters
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  # Devise Parameters
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [pirate_attributes: [:display_name, :user_id]]
    devise_parameter_sanitizer.for(:account_update) << [pirate_attributes: [:display_name]]
  end
end
