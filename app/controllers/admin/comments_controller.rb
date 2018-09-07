# frozen_string_literal: true

# this is a comments controller
class Admin::CommentsController < Admin::ApplicationController
  before_action :verify_logged_in

  def destroy; end
end
