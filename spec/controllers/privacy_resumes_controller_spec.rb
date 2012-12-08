require 'spec_helper'

describe PrivacyResumesController do
  def valid_attributes
    {
        :user_id=>7,:resume_id=>2,:privacy=>true
    }
  end

  def valid_session
    {}
  end


  describe "GET new" do
    it "assigns a new privacy_resume as @privacy_resume" do
      get :new, {}, valid_session
      assigns(:privacy_resume).should be_a_new(PrivacyResume)
    end
  end
   describe "POST create" do
    describe "with valid params" do
      it "creates a new PrivacyResume" do
        expect {
          post :create, {:privacy_resume => valid_attributes}, valid_session
        }.to change(PrivacyResume, :count).by(1)
      end

      it "assigns a newly created privacy_resume as @privacy_resume" do
        post :create, {:privacy_resume => valid_attributes}, valid_session
        assigns(:privacy_resume).should be_a(PrivacyResume)
        assigns(:privacy_resume).should be_persisted
      end

      it "redirects to the created privacy_resume" do
        post :create, {:privacy_resume => valid_attributes}, valid_session
        response.should redirect_to(personal_data_path)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved privacy_resume as @privacy_resume" do
        # Trigger the behavior that occurs when invalid params are submitted
        PrivacyResume.any_instance.stub(:save).and_return(false)
        post :create, {:privacy_resume => {  }}, valid_session
        assigns(:privacy_resume).should be_a_new(PrivacyResume)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PrivacyResume.any_instance.stub(:save).and_return(false)
        post :create, {:privacy_resume => {  }}, valid_session
        response.should redirect_to(personal_data_path)
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested privacy_resume" do
      privacy_resume = PrivacyResume.create! valid_attributes
      expect {
        delete :destroy, {:id => privacy_resume.to_param}, valid_session
      }.to change(PrivacyResume, :count).by(-1)
    end

    it "redirects to the privacy_resumes list" do
      privacy_resume = PrivacyResume.create! valid_attributes
      delete :destroy, {:id => privacy_resume.to_param}, valid_session
      response.should redirect_to(privacy_resumes_url)
    end
  end

end
