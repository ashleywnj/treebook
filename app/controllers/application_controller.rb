class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

def configure_strong_parameters
devise_parameter_sanitizer.for(:sign_up) << [:user_name, :last_name, :first_name]
end