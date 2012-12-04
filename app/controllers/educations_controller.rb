class EducationsController < ApplicationController
  # GET /educations
  # GET /educations.json
  layout "default"
  before_filter :authenticate_user!
  load_and_authorize_resource
  def index
    #@educations = Education.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @educations }
    end
  end

  # GET /educations/1
  # GET /educations/1.json
  def show
    #@education = Education.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @education }
    end
  end

  # GET /educations/new
  # GET /educations/new.json
  def new
    #@education = Education.new
    @person=PersonalDatum.find_last_by_user_id(current_user.id)
    @skill = Skill.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @education }
    end
  end

  # GET /educations/1/edit
  def edit
    #@education = Education.find(params[:id])
  end

  # POST /educations
  # POST /educations.json
  def create
    #@education = Education.new(params[:education])
    @education.resume_id=session[:resume_id]
    @skill = Skill.new
    @person=PersonalDatum.find_last_by_user_id(current_user.id)

    respond_to do |format|
      if @education.save
        format.html { redirect_to new_education_path,notice: @education.course + " was successfully added."}
        #format.html { redirect_to @education, notice: 'Education was successfully created.' }
        #format.json { render json: @education, status: :created, location: @education }
      else
        format.html { render action: "new" }
        format.json { render json: @education.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /educations/1
  # PUT /educations/1.json
  def update
    #@education = Education.find(params[:id])

    respond_to do |format|
      if @education.update_attributes(params[:education])
        format.html { redirect_to @education, notice: 'Education was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @education.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /educations/1
  # DELETE /educations/1.json
  def destroy
    #@education = Education.find(params[:id])
    @education.destroy

    respond_to do |format|
      format.html { redirect_to educations_url }
      format.json { head :no_content }
    end
  end
end
