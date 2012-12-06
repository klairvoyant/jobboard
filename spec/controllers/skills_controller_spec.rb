require 'spec_helper'

describe SkillsController do

  def valid_attributes
    {
        :skill_name=>"C++",:skill_years=>4,:resume_id=>2
    }
  end

  def valid_session
    {}
  end

  describe "GET new" do
    it "assigns a new skill as @skill" do
      get :new, {}, valid_session
      assigns(:skill).should be_a_new(Skill)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Skill" do
        expect {
          post :create, {:skill => valid_attributes}, valid_session
        }.to change(Skill, :count).by(1)
      end

      it "assigns a newly created skill as @skill" do
        post :create, {:skill => valid_attributes}, valid_session
        assigns(:skill).should be_a(Skill)
        assigns(:skill).should be_persisted
      end

      it "redirects to the created skill" do
        post :create, {:skill => valid_attributes}, valid_session
        response.should redirect_to(new_education_path)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved skill as @skill" do
        # Trigger the behavior that occurs when invalid params are submitted
        Skill.any_instance.stub(:save).and_return(false)
        post :create, {:skill => {}}, valid_session
        assigns(:skill).should be_a_new(Skill)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Skill.any_instance.stub(:save).and_return(false)
        post :create, {:skill => {}}, valid_session
        response.should render_template("new")
      end
    end
  end
  describe "DELETE destroy" do
    it "destroys the requested skill" do
      skill = Skill.create! valid_attributes
      expect {
        delete :destroy, {:id => skill.to_param}, valid_session
      }.to change(Skill, :count).by(-1)
    end

    it "redirects to the skills list" do
      skill = Skill.create! valid_attributes
      delete :destroy, {:id => skill.to_param}, valid_session
      response.should redirect_to(skills_url)
    end
  end

end
