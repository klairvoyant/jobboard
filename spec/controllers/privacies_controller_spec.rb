require 'spec_helper'

describe PrivaciesController do

  def valid_attributes
    {
        :user_id=>7,:resume_id=>2
    }
  end

  def valid_session
    {}
  end

  describe "GET new" do
    it "assigns a new privacy as @privacy" do
      get :new, {}, valid_session
      assigns(:privacy).should be_a_new(Privacy)
    end
  end

  describe "GET edit" do
    it "assigns the requested privacy as @privacy" do
      privacy = Privacy.create! valid_attributes
      get :edit, {:id => privacy.to_param}, valid_session
      assigns(:privacy).should eq(privacy)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Privacy" do
        expect {
          post :create, {:privacy => valid_attributes}, valid_session
        }.to change(Privacy, :count).by(1)
      end

      it "assigns a newly created privacy as @privacy" do
        post :create, {:privacy => valid_attributes}, valid_session
        assigns(:privacy).should be_a(Privacy)
        assigns(:privacy).should be_persisted
      end

      it "redirects to the created privacy" do
        post :create, {:privacy => valid_attributes}, valid_session
        response.should redirect_to(personal_data_path)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved privacy as @privacy" do
        # Trigger the behavior that occurs when invalid params are submitted
        Privacy.any_instance.stub(:save).and_return(false)
        post :create, {:privacy => {}}, valid_session
        assigns(:privacy).should be_a_new(Privacy)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Privacy.any_instance.stub(:save).and_return(false)
        post :create, {:privacy => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested privacy" do
        privacy = Privacy.create! valid_attributes
        # Assuming there are no other privacies in the database, this
        # specifies that the Privacy created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Privacy.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => privacy.to_param, :privacy => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested privacy as @privacy" do
        privacy = Privacy.create! valid_attributes
        put :update, {:id => privacy.to_param, :privacy => valid_attributes}, valid_session
        assigns(:privacy).should eq(privacy)
      end

      it "redirects to the privacy" do
        privacy = Privacy.create! valid_attributes
        put :update, {:id => privacy.to_param, :privacy => valid_attributes}, valid_session
        response.should redirect_to(edit_privacy_path)
      end
    end

    describe "with invalid params" do
      it "assigns the privacy as @privacy" do
        privacy = Privacy.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Privacy.any_instance.stub(:save).and_return(false)
        put :update, {:id => privacy.to_param, :privacy => {}}, valid_session
        assigns(:privacy).should eq(privacy)
      end

      it "re-renders the 'edit' template" do
        privacy = Privacy.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Privacy.any_instance.stub(:save).and_return(false)
        put :update, {:id => privacy.to_param, :privacy => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested privacy" do
      privacy = Privacy.create! valid_attributes
      expect {
        delete :destroy, {:id => privacy.to_param}, valid_session
      }.to change(Privacy, :count).by(-1)
    end

    it "redirects to the privacies list" do
      privacy = Privacy.create! valid_attributes
      delete :destroy, {:id => privacy.to_param}, valid_session
      response.should redirect_to(privacies_url)
    end
  end

end
