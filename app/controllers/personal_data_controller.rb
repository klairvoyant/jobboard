class PersonalDataController < ApplicationController
  layout "dashboard"
  before_filter :authenticate_user!
  load_and_authorize_resource :except=> "index"
  def index

    if current_user.role==2
      redirect_to dashboard_for_alumni_index_path and return
    elsif current_user.role==3
      redirect_to dash_board_for_hr_index_path  and return
    elsif current_user.role==4
      redirect_to dash_board_for_recruiter_index_path  and return
    else
        @personal_datum=PersonalDatum.find_last_by_user_id(current_user.id)
        @resume=Resume.find_all_by_option_no_and_user_id(3,current_user.id)  #3 =uploaded file
        @file_uploads = FileUpload.all
        @file_upload = FileUpload.new
        if @personal_datum.nil?
        else
              @personal_datum.register==true  # to check whether it's first time or not
              @confirmed= Interview.where("user_id= ?  and interview_type= ? ",current_user.id,1)
              @requested= Interview.where("user_id= ?  and interview_type= ? ",current_user.id,2)
              @complete=Interview.where("user_id= ?  and interview_type= ? ",current_user.id,3)
              @incomplete=Interview.where("user_id= ?  and interview_type= ? ",current_user.id,4)

               if (@confirmed.length>0 )
                @confirmedcount= @confirmed.length
              else
                @confirmedcount="None Confirmed"
              end
              if @requested.length>0
                @requestedcount= @requested.length
              else
                @requestedcount="No Requests"
              end
              if @complete.length>0
                @completecount= @complete.length
              else
                @completecount="None completed"
              end
              if @incomplete.length>0
                @incompletecount= @incomplete.length
              else
                @incompletecount="None "
              end
         end
         respond_to do |format|
           format.html # index.html.erb
         end
   end
   end
  def new
    respond_to do |format|
      format.html # new.html.erb
    end
  end
  def edit

   end
  def create
    @personal_datum.user_id=current_user.id
    @personal_datum.register=true   # to check first time registration
    respond_to do |format|
      if @personal_datum.save
         format.html { redirect_to personal_data_path,notice: 'Data successfully created' }
      else
        format.html { render action: "new" }
      end
    end
  end
  def update
    respond_to do |format|
      if @personal_datum.update_attributes(params[:personal_datum])
         format.html { redirect_to personal_data_path, notice: 'Data was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end
  def destroy
    @personal_datum.destroy
    respond_to do |format|
      format.html { redirect_to personal_data_url }
    end
  end

end
