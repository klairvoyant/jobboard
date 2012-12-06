require 'spec_helper'

describe ObjectivesController do
  def valid_attributes
    {
        :interest_area_id=>2,:job_type_id=>2,:salary_range_id=>1,:resume_id=>7,:objective=>"better career"
    }
  end
  def valid_session
    {}
  end

  describe "GET new" do
    it "assigns a new objective as @objective" do
      get :new, {}, valid_session
      assigns(:objective).should be_a_new(Objective)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Objective" do
        expect {
          post :create, {:objective => valid_attributes}, valid_session
        }.to change(Objective, :count).by(1)
      end

      it "assigns a newly created objective as @objective" do
        post :create, {:objective => valid_attributes}, valid_session
        assigns(:objective).should be_a(Objective)
        assigns(:objective).should be_persisted
      end

      it "redirects to the created objective" do
        post :create, {:objective => valid_attributes}, valid_session
        response.should redirect_to(new_employment_history_path)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved objective as @objective" do
        # Trigger the behavior that occurs when invalid params are submitted
        Objective.any_instance.stub(:save).and_return(false)
        post :create, {:objective => {}}, valid_session
        assigns(:objective).should be_a_new(Objective)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Objective.any_instance.stub(:save).and_return(false)
        post :create, {:objective => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested objective" do
      objective = Objective.create! valid_attributes
      expect {
        delete :destroy, {:id => objective.to_param}, valid_session
      }.to change(Objective, :count).by(-1)
    end

    it "redirects to the objectives list" do
      objective = Objective.create! valid_attributes
      delete :destroy, {:id => objective.to_param}, valid_session
      response.should redirect_to(objectives_url)
    end
  end

end
