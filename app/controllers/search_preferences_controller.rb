class SearchPreferencesController < ApplicationController
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
      if @search_preference.save
        #format.html { redirect_to @search_preference, notice: 'Search preference was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end
  def update
      respond_to do |format|
      if @search_preference.update_attributes(params[:search_preference])
        format.html { redirect_to edit_search_preference_path, notice: 'Search preference was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end
  def destroy
    @search_preference.destroy
    respond_to do |format|
      format.html { redirect_to search_preferences_url }
      format.json { head :no_content }
    end
  end
end
