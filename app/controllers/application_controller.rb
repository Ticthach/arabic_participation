class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:uin, :position, :email, :password, :remember_me)}
        devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password, :remember_me)}
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:position, :email, :password, :remember_me)}
    end
end
