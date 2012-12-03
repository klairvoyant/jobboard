class InterestAreasController < ApplicationController
  # GET /interest_areas
  # GET /interest_areas.json
  def index
    @interest_areas = InterestArea.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @interest_areas }
    end
  end

  # GET /interest_areas/1
  # GET /interest_areas/1.json
  def show
    @interest_area = InterestArea.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @interest_area }
    end
  end

  # GET /interest_areas/new
  # GET /interest_areas/new.json
  def new
    @interest_area = InterestArea.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @interest_area }
    end
  end

  # GET /interest_areas/1/edit
  def edit
    @interest_area = InterestArea.find(params[:id])
  end

  # POST /interest_areas
  # POST /interest_areas.json
  def create
    @interest_area = InterestArea.new(params[:interest_area])

    respond_to do |format|
      if @interest_area.save
        format.html { redirect_to @interest_area, notice: 'Interest area was successfully created.' }
        format.json { render json: @interest_area, status: :created, location: @interest_area }
      else
        format.html { render action: "new" }
        format.json { render json: @interest_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /interest_areas/1
  # PUT /interest_areas/1.json
  def update
    @interest_area = InterestArea.find(params[:id])

    respond_to do |format|
      if @interest_area.update_attributes(params[:interest_area])
        format.html { redirect_to @interest_area, notice: 'Interest area was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @interest_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interest_areas/1
  # DELETE /interest_areas/1.json
  def destroy
    @interest_area = InterestArea.find(params[:id])
    @interest_area.destroy

    respond_to do |format|
      format.html { redirect_to interest_areas_url }
      format.json { head :no_content }
    end
  end
end
