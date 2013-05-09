class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def current_user
    @current_user ||= User.first || User.create!(name: "Gavin")
  end
  
  def login_required
    redirect_to root_url unless current_user
  end
  
  helper_method :current_user
end
