class LanguagesController < ApplicationController
  layout "default"
  before_filter :authenticate_user!
  load_and_authorize_resource
  def new
    @person=PersonalDatum.find_last_by_user_id(current_user.id)
    @certification = Certification.new
    @privacy = Privacy.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end
  def create
    @language.resume_id=session[:resume_id]
    @person=PersonalDatum.find_last_by_user_id(current_user.id)
    @certification = Certification.new
    @privacy = Privacy.new
    respond_to do |format|
      if @language.save
        format.html { redirect_to new_language_path ,notice: @language.language_name + ' was successfully updated.'}
      else
        format.html { render action: "new" }
      end
    end
  end
  def destroy
    @language.destroy
    respond_to do |format|
      format.html { redirect_to languages_url }
    end
  end
end
