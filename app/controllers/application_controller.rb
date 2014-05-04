class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_park
  private
  def current_park
    @current_park ||= Park.find(session[:last_park]) if session[:last_park]
  end
end
