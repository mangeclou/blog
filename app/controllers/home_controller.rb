class HomeController < ApplicationController
  def index
  end
  
  #Fonction d'authentification
private
  def authenticate
    authenticate_or_request_with_http_basic do |name, password|
      name == "admin" && password == "admin"
    end
  end
  
  
  
end
