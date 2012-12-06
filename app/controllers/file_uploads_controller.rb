class FileUploadsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  def index
      respond_to do |format|
      format.html # index.html.erb
    end
  end
  def new
     respond_to do |format|
      format.html # new.html.erb
    end
  end
   def create
     @file_upload.user_id=current_user.id
     respond_to do |format|
      if @file_upload.save
        format.html { redirect_to root_path, notice: 'Upload was successful.' }
      else
        flash[:error] = "select a file for upload"
        format.html { redirect_to  personal_data_path }
      end
    end
  end
  def destroy
     @file_upload.destroy
     respond_to do |format|
      format.html { redirect_to personal_data_path }
    end
  end
end
