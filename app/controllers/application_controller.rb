class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # before_action :configure_devise_permitted_parameters, if: :devise_controller?
  helper_method :is_admin?

  require 'will_paginate/array'

  protected

#   def configure_devise_permitted_parameters
#     registration_params = [:name, :email, :password, :password_confirmation, :aadhar_card, :phone, :reference, :address, :avatar,:gender, :serial_no, :dob, :role]
#
#     if params[:action] == 'update'
#       devise_parameter_sanitizer.for(:account_update) {
#         |u| u.permit(registration_params << :current_password)
#       }
#     elsif params[:action] == 'create'
#       devise_parameter_sanitizer.for(:sign_up) {
#         |u| u.permit(registration_params)
#       }
#     end
# end

def after_sign_up_path_for(resource)
  dashboard_index_path
end

def after_update_path_for(resource)
  dashboard_index_path
end

def after_sign_in_path_for(resource)
  dashboard_index_path
end

def is_admin?
  redirect_to root_path unless current_user.is_admin
end
end
