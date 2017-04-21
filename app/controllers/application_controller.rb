class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
   before_action :configure_permitted_parameters, if: :devise_controller?
   before_action :set_new_user, unless: :devise_controller? || :current_user?
   after_action :store_action
   before_action :check_if_user_is_valid, if: :current_user?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :profile, :industry, :biography, :linkedin_url, :avatar_url])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :first_name, :last_name, :email, :linkedin_url, :biography, :profile, :industry, :avatar_url, :current_password])
  end

  def set_new_user
    @user = User.new
  end

  def current_user?
    current_user
  end

  def store_action
    return unless request.get?
    if (request.path != "/users/sign_in" &&
        request.path != "/users/sign_up" &&
        request.path != "/users/password/new" &&
        request.path != "/users/password/edit" &&
        request.path != "/users/confirmation" &&
        request.path != "/users/sign_out" &&
        !request.xhr?) # don't store ajax calls
      store_location_for(:user, meetings_path)
    end
  end

  def check_if_user_is_valid
    if !current_user.valid? && !devise_controller?
      redirect_to edit_user_registration_path, alert: "Please finish your profile."
    end
  end

end
