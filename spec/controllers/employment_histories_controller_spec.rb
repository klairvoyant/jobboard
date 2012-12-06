require 'spec_helper'

describe EmploymentHistoriesController do


  def valid_attributes
    {
        :company_name=>"klairvoyant",:job_description=>"developer",:job_title=>"Developer",:resume_id=>2
    }
  end

  def valid_session
    {}
  end

   describe "GET new" do
    it "assigns a new employment_history as @employment_history" do
      get :new, {}, valid_session
      assigns(:employment_history).should be_a_new(EmploymentHistory)
    end
  end
  describe "POST create" do
    describe "with valid params" do
      it "creates a new EmploymentHistory" do
        expect {
          post :create, {:employment_history => valid_attributes}, valid_session
        }.to change(EmploymentHistory, :count).by(1)
      end

      it "assigns a newly created employment_history as @employment_history" do
        post :create, {:employment_history => valid_attributes}, valid_session
        assigns(:employment_history).should be_a(EmploymentHistory)
        assigns(:employment_history).should be_persisted
      end

      it "redirects to the created employment_history" do
        post :create, {:employment_history => valid_attributes}, valid_session
        response.should redirect_to(new_employment_history_path)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved employment_history as @employment_history" do
        # Trigger the behavior that occurs when invalid params are submitted
        EmploymentHistory.any_instance.stub(:save).and_return(false)
        post :create, {:employment_history => {}}, valid_session
        assigns(:employment_history).should be_a_new(EmploymentHistory)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        EmploymentHistory.any_instance.stub(:save).and_return(false)
        post :create, {:employment_history => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested employment_history" do
      employment_history = EmploymentHistory.create! valid_attributes
      expect {
        delete :destroy, {:id => employment_history.to_param}, valid_session
      }.to change(EmploymentHistory, :count).by(-1)
    end

    it "redirects to the employment_histories list" do
      employment_history = EmploymentHistory.create! valid_attributes
      delete :destroy, {:id => employment_history.to_param}, valid_session
      response.should redirect_to(employment_histories_url)
    end
  end

end
