class ApplicationController < ActionController::Base
  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
    flash[:notice] = "Access Denied :- you are not authorized!"
    #redirect_to root_url
    #redirect_to '/registrations/new'
    redirect_to 'personal_data/preview'
  end
end
