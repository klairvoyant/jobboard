class SalaryRangesController < ApplicationController
  # GET /salary_ranges
  # GET /salary_ranges.json
  def index
    @salary_ranges = SalaryRange.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @salary_ranges }
    end
  end

  # GET /salary_ranges/1
  # GET /salary_ranges/1.json
  def show
    @salary_range = SalaryRange.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @salary_range }
    end
  end

  # GET /salary_ranges/new
  # GET /salary_ranges/new.json
  def new
    @salary_range = SalaryRange.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @salary_range }
    end
  end

  # GET /salary_ranges/1/edit
  def edit
    @salary_range = SalaryRange.find(params[:id])
  end

  # POST /salary_ranges
  # POST /salary_ranges.json
  def create
    @salary_range = SalaryRange.new(params[:salary_range])

    respond_to do |format|
      if @salary_range.save
        format.html { redirect_to @salary_range, notice: 'Salary range was successfully created.' }
        format.json { render json: @salary_range, status: :created, location: @salary_range }
      else
        format.html { render action: "new" }
        format.json { render json: @salary_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /salary_ranges/1
  # PUT /salary_ranges/1.json
  def update
    @salary_range = SalaryRange.find(params[:id])

    respond_to do |format|
      if @salary_range.update_attributes(params[:salary_range])
        format.html { redirect_to @salary_range, notice: 'Salary range was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @salary_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salary_ranges/1
  # DELETE /salary_ranges/1.json
  def destroy
    @salary_range = SalaryRange.find(params[:id])
    @salary_range.destroy

    respond_to do |format|
      format.html { redirect_to salary_ranges_url }
      format.json { head :no_content }
    end
  end
end
