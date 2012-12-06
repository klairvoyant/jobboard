class CertificationsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  layout "default"
  def new
    respond_to do |format|
      format.html # new.html.erb
    end
  end
  def create
    @certification.resume_id=session[:resume_id]
    @person=PersonalDatum.find_last_by_user_id(current_user.id)
    @language = Language.new
    @privacy = Privacy.new
    respond_to do |format|
      if @certification.save
        format.html { redirect_to new_language_path,notice: @certification.certification_name + ' was successfully added'}
      else
        format.html { render action: "new" }
      end
    end
  end
  def destroy
    @certification.destroy
    respond_to do |format|
      format.html { redirect_to certifications_url }
    end
  end
end
