class ResumePersonalDataController < ApplicationController
  layout "default"
  before_filter :authenticate_user!
  load_and_authorize_resource
  def new
     @person=PersonalDatum.find_last_by_user_id(current_user.id)
    respond_to do |format|
      format.html # new.html.erb
    end
  end
  def create
    @person=PersonalDatum.find_last_by_user_id(current_user.id)
    @resume_personal_datum.resume_id=session[:resume_id]
    respond_to do |format|
      if @resume_personal_datum.save
        format.html { redirect_to new_objective_path}
      else
        format.html { render action: "new" }
      end
    end
  end
  def destroy
    @resume_personal_datum.destroy
    respond_to do |format|
      format.html { redirect_to resume_personal_data_url }
      format.json { head :no_content }
    end
  end
end
