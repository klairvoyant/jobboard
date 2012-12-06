class ObjectivesController < ApplicationController
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
    @objective = Objective.new(params[:objective])
    @person=PersonalDatum.find_last_by_user_id(current_user.id)
    @objective.resume_id=session[:resume_id]
    respond_to do |format|
      if @objective.save
         format.html { redirect_to new_employment_history_path }
      else
        format.html { render action: "new" }
       end
    end
  end
  def destroy
    @objective = Objective.find(params[:id])
    @objective.destroy
    respond_to do |format|
      format.html { redirect_to objectives_url }
      end
  end
end
