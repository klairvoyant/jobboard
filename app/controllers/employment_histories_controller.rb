class EmploymentHistoriesController < ApplicationController
   # GET /employment_histories
  # GET /employment_histories.json
  layout "default"
  before_filter :authenticate_user!
  load_and_authorize_resource
  def index
    #@employment_histories = EmploymentHistory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employment_histories }
    end
  end

  # GET /employment_histories/1
  # GET /employment_histories/1.json
  def show
    #@employment_history = EmploymentHistory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employment_history }
    end
  end

  # GET /employment_histories/new
  # GET /employment_histories/new.json
  def new
    #@employment_history = EmploymentHistory.new
    @person=PersonalDatum.find_last_by_user_id(current_user.id)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @employment_history }
    end
  end

  # GET /employment_histories/1/edit
  def edit
    #@employment_history = EmploymentHistory.find(params[:id])
  end

  # POST /employment_histories
  # POST /employment_histories.json
  def create
    #@employment_history = EmploymentHistory.new(params[:employment_history])
    @employment_history.resume_id=session[:resume_id]

    respond_to do |format|
      if @employment_history.save

        #format.html { redirect_to new_education_path}
        format.html { redirect_to new_employment_history_path}

        #format.html { redirect_to @employment_history, notice: 'Employment history was successfully created.' }
        #format.json { render json: @employment_history, status: :created, location: @employment_history }
      else
        format.html { render action: "new" }
        format.json { render json: @employment_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /employment_histories/1
  # PUT /employment_histories/1.json
  def update
    #@employment_history = EmploymentHistory.find(params[:id])

    respond_to do |format|
      if @employment_history.update_attributes(params[:employment_history])
        format.html { redirect_to @employment_history, notice: 'Employment history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @employment_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employment_histories/1
  # DELETE /employment_histories/1.json
  def destroy
    #@employment_history = EmploymentHistory.find(params[:id])
    @employment_history.destroy

    respond_to do |format|
      format.html { redirect_to employment_histories_url }
      format.json { head :no_content }
    end
  end
end
