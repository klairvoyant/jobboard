class SkillsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  layout "default"
  def new
      respond_to do |format|
      format.html # new.html.erb
    end
  end
  def create
    @skill.resume_id=session[:resume_id]
    @person=PersonalDatum.find_last_by_user_id(current_user.id)
    @education = Education.new
    respond_to do |format|
      if @skill.save
        format.html { redirect_to new_education_path,notice: @skill.skill_name + ' was successfully added.'}
      else
        format.html { render action: "new" }
      end
    end
  end
  def destroy
     @skill.destroy
     respond_to do |format|
      format.html { redirect_to skills_url }
    end
  end
end
