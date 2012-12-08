class ResumesController < ApplicationController
  layout "default"
  before_filter :authenticate_user!
  load_and_authorize_resource

    def new
     if current_user.role==2
       redirect_to dashboard_for_alumni_index_path and return
    elsif current_user.role==3
      redirect_to dash_board_for_hr_index_path  and return
    elsif current_user.role==4
      redirect_to dash_board_for_recruiter_index_path  and return
    elsif current_user.role==1
        @person=PersonalDatum.find_last_by_user_id(current_user.id)
        respond_to do |format|
          format.html # new.html.erb
         end
      end
  end
  def create

    SearchPreference.find_or_create_by_user_id(:user_id=>current_user.id,:category_id=>1,:city=>'Cochin',:state=>"kerala",:zipcode=>"680505")
    TimeZone.find_or_create_by_user_id(:user_id=>current_user.id,:time_zone=>"GMT +5:30")  #To add some data for creating new entry
    Privacy.find_or_create_by_user_id(:user_id=>current_user.id)
    session[:user_id]=current_user.id
    @resume.user_id=current_user.id

    # set proper resume type and option value
    if @resume.file_name.blank?
         @resume.resume_type=0
    else
       @resume.resume_type=1
         @resume.option_no=3
    end

    if @resume.data.blank?
    else
      @resume.resume_type=0
      @resume.option_no=4
    end

    respond_to do |format|
      if @resume.save
        session[:resume_id]=@resume.id      # save resume id for further use
        if (@resume.option_no==1)
          format.html { redirect_to new_resume_personal_datum_path}
        else
          format.html { redirect_to new_personal_datum_path}
        end
      end
    end
  end

  def destroy
     @resume.destroy
     respond_to do |format|
      format.html { redirect_to personal_data_path }
     end
  end
end