require 'spec_helper'

describe LanguagesController do
  def valid_attributes
    {
        :language_name=>"java",:language_proficiency=>"good",:resume_id=>2
    }
  end

  def valid_session
    {}
  end

  describe "GET new" do
    it "assigns a new language as @language" do
      get :new, {}, valid_session
      assigns(:language).should be_a_new(Language)
    end
  end
  describe "POST create" do
    describe "with valid params" do
      it "creates a new Language" do
        expect {
          post :create, {:language => valid_attributes}, valid_session
        }.to change(Language, :count).by(1)
      end

      it "assigns a newly created language as @language" do
        post :create, {:language => valid_attributes}, valid_session
        assigns(:language).should be_a(Language)
        assigns(:language).should be_persisted
      end

      it "redirects to the created language" do
        post :create, {:language => valid_attributes}, valid_session
        response.should redirect_to(new_language_path)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved language as @language" do
        # Trigger the behavior that occurs when invalid params are submitted
        Language.any_instance.stub(:save).and_return(false)
        post :create, {:language => {}}, valid_session
        assigns(:language).should be_a_new(Language)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Language.any_instance.stub(:save).and_return(false)
        post :create, {:language => {}}, valid_session
        response.should render_template("new")
      end
    end
  end
  describe "DELETE destroy" do
    it "destroys the requested language" do
      language = Language.create! valid_attributes
      expect {
        delete :destroy, {:id => language.to_param}, valid_session
      }.to change(Language, :count).by(-1)
    end

    it "redirects to the languages list" do
      language = Language.create! valid_attributes
      delete :destroy, {:id => language.to_param}, valid_session
      response.should redirect_to(languages_url)
    end
  end

end
