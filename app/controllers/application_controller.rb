class ApplicationController < ActionController::Base
  layout :layout_by_resource
  protect_from_forgery
  before_filter :instantiate_controller_and_action_names
  rescue_from CanCan::AccessDenied do |exception|
    flash[:notice] = "Access Denied :- you are not authorized!"
    #redirect_to root_url
    #redirect_to '/registrations/new'
    redirect_to 'personal_data/preview'
  end

  protected

  def layout_by_resource
    if devise_controller?
      "layout_for_devise"
    else
      "application"
    end
  end

  def instantiate_controller_and_action_names
    @current_action = action_name
    @current_controller = controller_name
  end

end


