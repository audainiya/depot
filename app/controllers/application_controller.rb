# frozen_string_literal: true

# SessionsController
class ApplicationController < ActionController::Base
  before_action :authorize

  protected

  def authorize
    return if User.find_by(id: session[:user_id])

    redirect_to login_url, notice: 'Please Log in'
  end
end
