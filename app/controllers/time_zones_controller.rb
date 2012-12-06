class TimeZonesController < ApplicationController
  layout "default"
  before_filter :authenticate_user!
  load_and_authorize_resource
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
      if @time_zone.save
        #format.html { redirect_to @time_zone, notice: 'Time zone was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end
  def update
     respond_to do |format|
      if @time_zone.update_attributes(params[:time_zone])
        format.html { redirect_to edit_time_zone_path, notice: 'Time zone was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end
  def destroy
    @time_zone.destroy
    respond_to do |format|
      format.html { redirect_to time_zones_url }
    end
  end
end
