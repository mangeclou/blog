class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :current_root_class
    
  def current_root_class
    'active' if controller_name == "home" && action_name == "index" 
  end
  
  helper_method :current_posts_class
    
  def current_posts_class
    'active' if controller_name == "posts" && action_name == "index" 
  end
end
