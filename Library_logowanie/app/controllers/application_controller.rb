class ApplicationController < ActionController::Base
  protect_from_forgery  
  helper_method :current_user  
    
  private  
  def current_user  
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end  
  
  private
  def login_required
    unless current_user
      flash[:alert] = "You must first log in or register before accessing this page."
      redirect_to login_url
    end
  end
end
