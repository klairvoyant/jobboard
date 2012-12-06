class PrivaciesController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  layout "default"
  def new

    respond_to do |format|
      format.html # new.html.erb
    end
  end
  def edit
    @person=PersonalDatum.find_last_by_user_id(current_user.id)
  end
  def create
    @searchpreference=SearchPreference.new #To add blank data for editing later
    @timezone=TimeZone.new #To add blank data for editing later
    @privacy.user_id=current_user.id
    @privacy.resume_id=session[:resume_id]
    @searchpreference.user_id=current_user.id
    @timezone.user_id=current_user.id

    respond_to do |format|
      if @privacy.save
        @searchpreference.save # don't want to check validations want to save with id only
        @timezone.save   # don't want to check validations want to save with id only
        format.html { redirect_to personal_data_path}
     else
        format.html { render action: "new" }
      end
    end
  end
  def update
    respond_to do |format|
      if @privacy.update_attributes(params[:privacy])
        format.html { redirect_to edit_privacy_path, notice: 'Privacy was successfully updated.' }
       else
        format.html { render action: "edit" }
      end
    end
  end
  def destroy
    @privacy.destroy
    respond_to do |format|
      format.html { redirect_to privacies_url }
     end
  end
end
