class PrivacyResumesController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
   def new
      respond_to do |format|
      format.html # new.html.erb
     end
  end
  def create

    #SearchPreference.find_or_create_by_user_id(:user_id=>current_user.id,:category_id=>1,:city=>'Cochin',:state=>"kerala",:zipcode=>"680505")
    #TimeZone.find_or_create_by_user_id(:user_id=>current_user.id,:time_zone=>"GMT +5:30")  #To add some data for creating new entry
    #Privacy.find_or_create_by_user_id(:user_id=>current_user.id)


    @personal_datum=PersonalDatum.find_last_by_user_id(current_user.id)
    @privacy_resume.user_id=current_user.id
    @privacy_resume.resume_id=session[:resume_id]
    @privacy_resume.save
     if @personal_datum.nil?  # to check whether it's first time or not
        redirect_to new_personal_datum_path
     else
       redirect_to personal_data_path
     end
  end
 def destroy
     @privacy_resume.destroy
     respond_to do |format|
     format.html { redirect_to privacy_resumes_url }
    end
  end
end
