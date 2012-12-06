require 'spec_helper'

describe CertificationsController do
  def valid_attributes
    {
        :certification_name=>"certi1",:resume_id=>2
    }
  end

  def valid_session
    {}
  end

  describe "GET new" do
    it "assigns a new certification as @certification" do
      get :new, {}, valid_session
      assigns(:certification).should be_a_new(Certification)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Certification" do
        expect {
          post :create, {:certification => valid_attributes}, valid_session
        }.to change(Certification, :count).by(1)
      end

      it "assigns a newly created certification as @certification" do
        post :create, {:certification => valid_attributes}, valid_session
        assigns(:certification).should be_a(Certification)
        assigns(:certification).should be_persisted
      end

      it "redirects to the created certification" do
        post :create, {:certification => valid_attributes}, valid_session
        response.should redirect_to(new_language_path)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved certification as @certification" do
        # Trigger the behavior that occurs when invalid params are submitted
        Certification.any_instance.stub(:save).and_return(false)
        post :create, {:certification => {}}, valid_session
        assigns(:certification).should be_a_new(Certification)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Certification.any_instance.stub(:save).and_return(false)
        post :create, {:certification => {}}, valid_session
        response.should render_template("new")
      end
    end
  end
  describe "DELETE destroy" do
    it "destroys the requested certification" do
      certification = Certification.create! valid_attributes
      expect {
        delete :destroy, {:id => certification.to_param}, valid_session
      }.to change(Certification, :count).by(-1)
    end

    it "redirects to the certifications list" do
      certification = Certification.create! valid_attributes
      delete :destroy, {:id => certification.to_param}, valid_session
      response.should redirect_to(certifications_url)
    end
  end

end
