class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
   before_action :configure_permitted_parameters, if: :devise_controller?
   before_action :set_new_user, unless: :devise_controller? || :current_user?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :profile, :industry, :biography, :linkedin_url, :avatar_url])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :first_name, :last_name, :email, :linkedin_url, :biography, :profile, :industry, :avatar_url])
  end

  def set_new_user
    @user = User.new
  end

  def current_user?
    current_user
  end
end
