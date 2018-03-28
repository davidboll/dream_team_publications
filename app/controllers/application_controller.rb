class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :null_session, only: -> { request.format.json }
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def user_not_authorized
    redirect_to root_path, notice: 'Aja baja!'
  end
end
