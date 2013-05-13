class ApplicationController < ActionController::Base
  before_filter :authorize
  
  protect_from_forgery
  
  protected
  
    def authorize
      if User.count != 0
	    unless User.find_by_id(session[:user_id])
	    redirect_to login_url, notice: "Please, authorize"
	  end	
    end
  end	
end
