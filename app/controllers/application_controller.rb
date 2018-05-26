class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
      # Permit the `subscribe_newsletter` parameter along with the other
      # sign up parameters.
      devise_parameter_sanitizer.permit(:name, :last_name, :description, :gender, :phone, :birthday, :is_admin, :address, :email, :password)
    end
  end

