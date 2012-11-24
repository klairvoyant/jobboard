class ResumeJobDataController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  # GET /resume_job_data
  # GET /resume_job_data.json
  def index
    #@resume_job_data = ResumeJobDatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @resume_job_data }
    end
  end

  # GET /resume_job_data/1
  # GET /resume_job_data/1.json
  def show
    #@resume_job_datum = ResumeJobDatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @resume_job_datum }
    end
  end

  # GET /resume_job_data/new
  # GET /resume_job_data/new.json
  def new
    #@resume_job_datum = ResumeJobDatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @resume_job_datum }
    end
  end

  # GET /resume_job_data/1/edit
  def edit
    #@resume_job_datum = ResumeJobDatum.find(params[:id])
  end

  # POST /resume_job_data
  # POST /resume_job_data.json
  def create
    #@resume_job_datum = ResumeJobDatum.new(params[:resume_job_datum])

    respond_to do |format|
      if @resume_job_datum.save
        format.html { redirect_to @resume_job_datum, notice: 'Resume job datum was successfully created.' }
        format.json { render json: @resume_job_datum, status: :created, location: @resume_job_datum }
      else
        format.html { render action: "new" }
        format.json { render json: @resume_job_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /resume_job_data/1
  # PUT /resume_job_data/1.json
  def update
    #@resume_job_datum = ResumeJobDatum.find(params[:id])

    respond_to do |format|
      if @resume_job_datum.update_attributes(params[:resume_job_datum])
        format.html { redirect_to @resume_job_datum, notice: 'Resume job datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @resume_job_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resume_job_data/1
  # DELETE /resume_job_data/1.json
  def destroy
    #@resume_job_datum = ResumeJobDatum.find(params[:id])
    @resume_job_datum.destroy

    respond_to do |format|
      format.html { redirect_to resume_job_data_url }
      format.json { head :no_content }
    end
  end
end
