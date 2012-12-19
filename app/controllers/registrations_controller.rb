class RegistrationsController < Devise::RegistrationsController

   # GET /resource/sign_up

  protected
  def after_sign_up_path_for(resource)
    '/resumes/new'
  end


end
