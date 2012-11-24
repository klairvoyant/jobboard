class ResumePersonalDataController < ApplicationController
  # GET /resume_personal_data
  # GET /resume_personal_data.json
  layout "default"
  before_filter :authenticate_user!
  load_and_authorize_resource
  def index
    #@resume_personal_data = ResumePersonalDatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @resume_personal_data }
    end
  end

  # GET /resume_personal_data/1
  # GET /resume_personal_data/1.json
  def show
    #@resume_personal_datum = ResumePersonalDatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @resume_personal_datum }
    end
  end

  # GET /resume_personal_data/new
  # GET /resume_personal_data/new.json
  def new
    #@resume_personal_datum = ResumePersonalDatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @resume_personal_datum }
    end
  end

  # GET /resume_personal_data/1/edit
  def edit
    #@resume_personal_datum = ResumePersonalDatum.find(params[:id])
  end

  # POST /resume_personal_data
  # POST /resume_personal_data.json
  def create
    #@resume_personal_datum = ResumePersonalDatum.new(params[:resume_personal_datum])
    @resume_personal_datum.resume_id=session[:resume_id]

    respond_to do |format|
      if @resume_personal_datum.save


        format.html { redirect_to new_objective_path}
        #format.html { redirect_to @resume_personal_datum, notice: 'Resume personal datum was successfully created.' }
        #format.json { render json: @resume_personal_datum, status: :created, location: @resume_personal_datum }
      else
        format.html { render action: "new" }
        format.json { render json: @resume_personal_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /resume_personal_data/1
  # PUT /resume_personal_data/1.json
  def update
    #@resume_personal_datum = ResumePersonalDatum.find(params[:id])

    respond_to do |format|
      if @resume_personal_datum.update_attributes(params[:resume_personal_datum])
        format.html { redirect_to @resume_personal_datum, notice: 'Resume personal datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @resume_personal_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resume_personal_data/1
  # DELETE /resume_personal_data/1.json
  def destroy
    #@resume_personal_datum = ResumePersonalDatum.find(params[:id])
    @resume_personal_datum.destroy

    respond_to do |format|
      format.html { redirect_to resume_personal_data_url }
      format.json { head :no_content }
    end
  end
end
