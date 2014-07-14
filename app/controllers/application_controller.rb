class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_variant

  def set_variant
    request.variant = :desktop
    request.variant = :tablet if request.user_agent =~ /iPad/
    request.variant = :mobile if request.user_agent =~ /Mobile/
  end
end
