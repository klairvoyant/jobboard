require 'spec_helper'

describe FileUploadsController do

  def valid_attributes
    {:file_type=>2, :file_path=>"computer",:user_id=>7 }
  end

  def valid_session
    {}
  end

  describe "GET new" do
    it "assigns a new file_upload as @file_upload" do
      get :new, {}, valid_session
      assigns(:file_upload).should be_a_new(FileUpload)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "redirects to the created file_upload" do
        post :create, {:file_upload => valid_attributes}, valid_session
        response.should redirect_to(personal_data_path)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved file_upload as @file_upload" do
        # Trigger the behavior that occurs when invalid params are submitted
        FileUpload.any_instance.stub(:save).and_return(false)
        post :create, {:file_upload => { "user_id" => "invalid value" }}, valid_session
        assigns(:file_upload).should be_a_new(FileUpload)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        FileUpload.any_instance.stub(:save).and_return(false)
        post :create, {:file_upload => { "user_id" => "invalid value" }}, valid_session
        response.should redirect_to(personal_data_path)

      end
    end
  end
 end
