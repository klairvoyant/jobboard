class SearchPreferencesController < ApplicationController
  # GET /search_preferences
  # GET /search_preferences.json
  layout "default"
  def index
    @search_preferences = SearchPreference.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @search_preferences }
    end
  end

  # GET /search_preferences/1
  # GET /search_preferences/1.json
  def show
    @search_preference = SearchPreference.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @search_preference }
    end
  end

  # GET /search_preferences/new
  # GET /search_preferences/new.json
  def new
    @search_preference = SearchPreference.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @search_preference }
    end
  end

  # GET /search_preferences/1/edit
  def edit
    @search_preference = SearchPreference.find(params[:id])
    @person=PersonalDatum.find_last_by_user_id(current_user.id)
  end

  # POST /search_preferences
  # POST /search_preferences.json
  def create
    @search_preference = SearchPreference.new(params[:search_preference])

    respond_to do |format|
      if @search_preference.save
        format.html { redirect_to @search_preference, notice: 'Search preference was successfully created.' }
        format.json { render json: @search_preference, status: :created, location: @search_preference }
      else
        format.html { render action: "new" }
        format.json { render json: @search_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /search_preferences/1
  # PUT /search_preferences/1.json
  def update
    @search_preference = SearchPreference.find(params[:id])

    respond_to do |format|
      if @search_preference.update_attributes(params[:search_preference])
        #format.html { redirect_to @search_preference, notice: 'Search preference was successfully updated.' }
        format.html { redirect_to edit_search_preference_path, notice: 'Search preference was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @search_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /search_preferences/1
  # DELETE /search_preferences/1.json
  def destroy
    @search_preference = SearchPreference.find(params[:id])
    @search_preference.destroy

    respond_to do |format|
      format.html { redirect_to search_preferences_url }
      format.json { head :no_content }
    end
  end
end
