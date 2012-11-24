class ResumesController < ApplicationController
  layout "default"
  before_filter :authenticate_user!
  load_and_authorize_resource
  # GET /resumes
  # GET /resumes.json
  def index
    #@resumes = Resume.all

    #if current_user.role==2
    #
    #  redirect_to dashboard_for_alumni_index_path
    #elsif current_user.role==3
    #  redirect_to dash_board_for_hr_index_path
    #elsif current_user.role==4
    #  redirect_to dash_board_for_recruiter_index_path
    #elsif current_user.role==1

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @resumes }
    end
    #end
    #return
  end

  # GET /resumes/1
  # GET /resumes/1.json
  def show
    #@resume = Resume.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @resume }
    end
  end

  # GET /resumes/new
  # GET /resumes/new.json
  def new

    #@personal_datum = PersonalDatum.new
    #@person= @personal_datum.find_last_by_user_id(current_user.id)
    @person=PersonalDatum.find_last_by_user_id(current_user.id)
    #@resume = Resume.new

    #if current_user.role==2
    #
    #  redirect_to dashboard_for_alumni_index_path
    #elsif current_user.role==3
    #  redirect_to dash_board_for_hr_index_path
    #elsif current_user.role==4
    #  redirect_to dash_board_for_recruiter_index_path
    #elsif current_user.role==1

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @resume }
    end
      #end
      #return
  end

  # GET /resumes/1/edit
  def edit
    #@resume = Resume.find(params[:id])
  end

  # POST /resumes
  # POST /resumes.json
  def create
    #@resume = Resume.new(params[:resume])

    session[:user_id]=current_user.id
    @resume.user_id=current_user.id
    @resume.type=1


    respond_to do |format|
      if @resume.save
        session[:resume_id]=@resume.id
        if (@resume.option_no==1)
          format.html { redirect_to new_resume_personal_datum_path}
        else
          format.html { redirect_to new_personal_datum_path}
        end
        #format.html { redirect_to @resume, notice: 'Resume was successfully created.' }
        #format.json { render json: @resume, status: :created, location: @resume }
      else
        format.html { render action: "new" }
        format.json { render json: @resume.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /resumes/1
  # PUT /resumes/1.json
  def update
    #@resume = Resume.find(params[:id])

    respond_to do |format|
      if @resume.update_attributes(params[:resume])
        format.html { redirect_to @resume, notice: 'Resume was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @resume.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resumes/1
  # DELETE /resumes/1.json
  def destroy
    #@resume = Resume.find(params[:id])
    @resume.destroy

    respond_to do |format|
      format.html { redirect_to resumes_url }
      format.json { head :no_content }
    end
  end
end
