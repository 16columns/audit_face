
class ApplicationController < ActionController::Base
 	before_filter :authenticate_user!
 # protect_from_forgery
	  

  

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
      puts "this is my application on cloud9"
      
    end
    
    
    end
  

    
end
