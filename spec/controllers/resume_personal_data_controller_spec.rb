require 'spec_helper'

describe ResumePersonalDataController do

  def valid_attributes
    {
        :zip=>"680068",:phone=>"04875678",:resume_name=>"my first",:resume_id=>3
    }
  end

  def valid_session
    {


    }
  end

    describe "GET new" do
    it "assigns a new resume_personal_datum as @resume_personal_datum" do
      get :new, {}
      assigns(:resume_personal_datum).should be_a_new(ResumePersonalDatum)
    end
  end
  describe "POST create" do
    describe "with valid params" do
      it "creates a new ResumePersonalDatum" do
        expect {
          post :create, {:resume_personal_datum => valid_attributes}
        }.to change(ResumePersonalDatum, :count).by(1)
      end

      it "assigns a newly created resume_personal_datum as @resume_personal_datum" do
        post :create, {:resume_personal_datum => valid_attributes}, valid_session
        assigns(:resume_personal_datum).should be_a(ResumePersonalDatum)
        assigns(:resume_personal_datum).should be_persisted
      end

      it "redirects to the created resume_personal_datum" do
        post :create, {:resume_personal_datum => valid_attributes}, valid_session
        response.should redirect_to(new_objective_path)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved resume_personal_datum as @resume_personal_datum" do
        # Trigger the behavior that occurs when invalid params are submitted
        ResumePersonalDatum.any_instance.stub(:save).and_return(false)
        post :create, {:resume_personal_datum => {}}, valid_session
        assigns(:resume_personal_datum).should be_a_new(ResumePersonalDatum)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ResumePersonalDatum.any_instance.stub(:save).and_return(false)
        post :create, {:resume_personal_datum => {}}, valid_session
        response.should render_template("new")
      end
    end
  end
  #
  describe "DELETE destroy" do
    it "destroys the requested resume_personal_datum" do
      resume_personal_datum = ResumePersonalDatum.create! valid_attributes
      expect {
        delete :destroy, {:id => resume_personal_datum.to_param}, valid_session
      }.to change(ResumePersonalDatum, :count).by(-1)
    end

    it "redirects to the resume_personal_data list" do
      resume_personal_datum = ResumePersonalDatum.create! valid_attributes
      delete :destroy, {:id => resume_personal_datum.to_param}, valid_session
      response.should redirect_to(resume_personal_data_url)
    end
  end

end
