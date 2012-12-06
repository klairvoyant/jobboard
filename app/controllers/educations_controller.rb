class EducationsController < ApplicationController
  layout "default"
  before_filter :authenticate_user!
  load_and_authorize_resource
  def new
    @person=PersonalDatum.find_last_by_user_id(current_user.id)
    @skill = Skill.new
    respond_to do |format|
      format.html # new.html.erb
      end
  end
  def create
    @education.resume_id=session[:resume_id]
    @skill = Skill.new
    @person=PersonalDatum.find_last_by_user_id(current_user.id)
    respond_to do |format|
      if @education.save
        format.html { redirect_to new_education_path,notice: @education.course + " was successfully added."}
      else
        format.html { render action: "new" }
      end
    end
  end
  def destroy
    @education.destroy
    respond_to do |format|
      format.html { redirect_to educations_url }
    end
  end
end
