class PersonalDataController < ApplicationController
  layout "dashboard"
  before_filter :authenticate_user! #,  :except=>'preview'
  load_and_authorize_resource  :except=> ['index']


  def index

    @file_uploads = FileUpload.all
    @file_upload = FileUpload.new
    @resume=Resume.find_all_by_option_no_and_user_id(3,current_user.id)
    #if current_user.role
      if current_user.role==2

      redirect_to dashboard_for_alumni_index_path
      elsif current_user.role==3
        redirect_to dash_board_for_hr_index_path
      elsif current_user.role==4
        redirect_to dash_board_for_recruiter_index_path
      elsif current_user.role==1


    #else
    #  flash[:notice]="Role not Assigned"
    #  #redirect_to(:controller => "homes",:action => "index")
    #
    #end


    #@personal_data = PersonalDatum.all
    #@personal_data = PersonalDatum.find_all_by_user_id(current_user.id)

    @personal_datum=PersonalDatum.find_last_by_user_id(current_user.id)



     if @personal_datum.register==true


    @confirmed= Interview.where("user_id= ?  and interview_type= ? ",current_user.id,1)
    @requested= Interview.where("user_id= ?  and interview_type= ? ",current_user.id,2)
    @complete=Interview.where("user_id= ?  and interview_type= ? ",current_user.id,3)
    @incomplete=Interview.where("user_id= ?  and interview_type= ? ",current_user.id,4)

    if @confirmed.length>0
      @confirmedcount= @confirmed.length
    else
      @confirmedcount="No Interviews"
    end

    if @requested.length>0
      @requestedcount= @requested.length
    else
      @requestedcount="No Interviews"
    end

    if @complete.length>0
      @completecount= @complete.length
    else
      @completecount="No Interviews"
    end

    if @incomplete.length>0
      @incompletecount= @incomplete.length
    else
      @incompletecount="No Interviews"
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @personal_data }
    end
   end
   return
      else
        format.html { render action: "new" }
      end
  end

  # GET /personal_data/1
  # GET /personal_data/1.json
  def show
    #@personal_datum = PersonalDatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @personal_datum }
    end
  end

  # GET /personal_data/new
  # GET /personal_data/new.json
  def new

    #@personal_datum = PersonalDatum.new

    @preferedplace=SearchPreference.new
    @timezone=TimeZone.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @personal_datum }
    end
  end

  # GET /personal_data/1/edit
  def edit
        #@personal_datum = PersonalDatum.find(params[:id])

  end

  # POST /personal_data
  # POST /personal_data.json
  def create
    #@personal_datum = PersonalDatum.new(params[:personal_datum])
    @personal_datum.user_id=current_user.id
    @personal_datum.register=true   # to check first time registration

    @preferedplace.user_id=current_user.id
    @preferedplace.save

    @timezone.user_id=current_user.id
    @timezone.save



    respond_to do |format|
      if @personal_datum.save
        #format.html { redirect_to @personal_datum, notice: 'Personal datum was successfully created.' }
        format.html { render action: "index" }
        #format.html { redirect_to @personal_data, notice: 'Personal datum was successfully created.' }

        #format.json { render json: @personal_datum, status: :created, location: @personal_datum }
      else
        format.html { render action: "new" }
        format.json { render json: @personal_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /personal_data/1
  # PUT /personal_data/1.json
  def update
    #@personal_datum = PersonalDatum.find(params[:id])

    respond_to do |format|
      if @personal_datum.update_attributes(params[:personal_datum])
        #format.html { redirect_to @personal_datum, notice: 'Personal datum was successfully updated.' }
        format.html { redirect_to personal_data_path, notice: 'Personal datum was successfully updated.' }

        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @personal_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_data/1
  # DELETE /personal_data/1.json
  def destroy
    #@personal_datum = PersonalDatum.find(params[:id])
    @personal_datum.destroy

    respond_to do |format|
      format.html { redirect_to personal_data_url }
      format.json { head :no_content }
    end
  end

  #def preview
  #
  #end
end
