class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :update_allowed_parameters, if: :devise_controller?

  def admin_check
    redirect_back fallback_location: root_path unless current_user.try(:admin?) 
end

  def currentuser_check
    if current_user.present? == false
    redirect_to root_path, notice: "Vous devez vous inscrire/connecté pour continuer"
  end
end

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :surname, :email, :password)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :surname, :email, :password, :current_password)}
  end
end