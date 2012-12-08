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
    respond_to do |format|
      if @privacy.save
        #format.html { redirect_to @search_preference, notice: 'Search preference was successfully created.' }
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
