# frozen_string_literal: true

# this is a Application controller
class Admin::ApplicationController < ActionController::Base
  #Prevent CSRF attacks by raising an exeption.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout 'admin/application'
end
