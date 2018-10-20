class ApplicationController < ActionController::Base
  def error_response(object, message = nil, status = nil)
    render json: Error.new(object, message), serializer: ErrorSerializer, status: status || 400
  end

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end
end
