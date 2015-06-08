class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception


    # Overwriting the sign_out redirect path method
    def after_sign_out_path_for(resource_or_scope)
      root_path
    end

    def after_sign_in_path_for(resource)
      request.env['omniauth.origin'] || stored_location_for(resource) || root_path
    end


  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
    devise_parameter_sanitizer.for(:sign_up) << :email
    devise_parameter_sanitizer.for(:sign_up) << :address
    devise_parameter_sanitizer.for(:sign_up) << :phone
    devise_parameter_sanitizer.for(:sign_up) << :sic
    devise_parameter_sanitizer.for(:sign_up) << :vendor


    devise_parameter_sanitizer.for(:account_update) << :username
    devise_parameter_sanitizer.for(:account_update) << :email
    devise_parameter_sanitizer.for(:account_update) << :address
    devise_parameter_sanitizer.for(:account_update) << :phone
    devise_parameter_sanitizer.for(:account_update) << :sic
    devise_parameter_sanitizer.for(:account_update) << :vendor
  end

end


