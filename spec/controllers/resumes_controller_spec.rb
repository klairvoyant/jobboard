require 'spec_helper'

describe ResumesController do
  def valid_attributes
    {
        :user_id=>2,:option_no=>1
    }
  end

  def valid_attributes2
    {
        :user_id=>2,:option_no=>2
    }
  end

  describe "GET new" do

    it "assigns a new resume as @resume" do
      get :new, {}
      assigns(:resume).should be_a_new(Resume)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Resume" do
        expect {
          post :create, {:resume => valid_attributes}
        }.to change(Resume, :count).by(1)
      end

      it "assigns a newly created resume as @resume" do
        post :create, {:resume => valid_attributes}
        assigns(:resume).should be_a(Resume)
        assigns(:resume).should be_persisted
      end

      it "redirects to the created resume" do
        post :create, {:resume => valid_attributes}
        response.should_not redirect_to(Resume.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved resume as @resume" do
        # Trigger the behavior that occurs when invalid params are submitted
        Resume.any_instance.stub(:save).and_return(false)
        post :create, {:resume => {}}
        assigns(:resume).should be_a_new(Resume)
      end
    end
    describe "with redirection after creation" do
          it "redirects to new_resume_personal_datum_path" do
               post :create, {:resume => valid_attributes}
               response.should redirect_to(new_resume_personal_datum_path)
          end
          it "redirects to new_personal_datum_path" do
            post :create, {:resume => valid_attributes2}
            response.should redirect_to(new_personal_datum_path)
          end
    end
  end
  describe "DELETE destroy" do
    it "destroys the requested resume" do
      resume = Resume.create! valid_attributes
      expect {
        delete :destroy, {:id => resume.to_param}
      }.to change(Resume, :count).by(-1)
    end

    it "redirects to the resumes list" do
      resume = Resume.create! valid_attributes
      delete :destroy, {:id => resume.to_param}
      response.should redirect_to(personal_data_path)
    end
  end

end
