class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :log_unregistered_user
  before_action :log_registered_user

  protect_from_forgery with: :exception

  def log_unregistered_user
    @current_user = User.where(ip_address: request.remote_ip).first_or_create
  end

  def log_registered_user
    @registered_user = RegisteredUser.find session[:current_registered_user_id] if session[:current_registered_user_id]
  end
end
