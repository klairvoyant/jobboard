class EmploymentHistoriesController < ApplicationController
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
    @employment_history.resume_id=session[:resume_id]
    respond_to do |format|
      if @employment_history.save
        format.html { redirect_to new_employment_history_path,notice: 'Employment history was successfully created.'}
      else
        format.html { render action: "new" }
       end
    end
  end
  def destroy
    @employment_history.destroy
    respond_to do |format|
      format.html { redirect_to employment_histories_url }
    end
  end
end
