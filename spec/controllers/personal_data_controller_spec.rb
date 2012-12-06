require 'spec_helper'


describe PersonalDataController do
  def valid_attributes
    {
        :about_me=>"about me", :area_of_study=>"computer", :email=>"john@klairvoyant.com", :experience=>"experience", :name=>"john", :phone=>"56789", :school=>"my school", :user_id=>7
    }
  end

  def valid_session
    {}
  end

  describe "GET index" do

    it "redirects to the dashboard_for_alumni_index_path" do
    get :index, {}, valid_session
    response.should be_success
   end
  end
  describe "GET new" do
    it "assigns a new personal_datum as @personal_datum" do
      get :new, {}, valid_session
      assigns(:personal_datum).should be_a_new(PersonalDatum)
    end
  end

  describe "GET edit" do
    it "assigns the requested personal_datum as @personal_datum" do
      personal_datum = PersonalDatum.create! valid_attributes
      get :edit, {:id => personal_datum.to_param}, valid_session
      assigns(:personal_datum).should eq(personal_datum)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PersonalDatum" do
        expect {
          post :create, {:personal_datum => valid_attributes}, valid_session
        }.to change(PersonalDatum, :count).by(1)
      end

      it "assigns a newly created personal_datum as @personal_datum" do
        post :create, {:personal_datum => valid_attributes}, valid_session
        assigns(:personal_datum).should be_a(PersonalDatum)
        assigns(:personal_datum).should be_persisted
      end

      it "redirects to the created personal_datum" do
        post :create, {:personal_datum => valid_attributes}, valid_session
        response.should redirect_to(personal_data_path)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved personal_datum as @personal_datum" do
        # Trigger the behavior that occurs when invalid params are submitted
        PersonalDatum.any_instance.stub(:save).and_return(false)
        post :create, {:personal_datum => {}}, valid_session
        assigns(:personal_datum).should be_a_new(PersonalDatum)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PersonalDatum.any_instance.stub(:save).and_return(false)
        post :create, {:personal_datum => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested personal_datum" do
        personal_datum = PersonalDatum.create! valid_attributes
        # Assuming there are no other personal_data in the database, this
        # specifies that the PersonalDatum created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PersonalDatum.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => personal_datum.to_param, :personal_datum => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested personal_datum as @personal_datum" do
        personal_datum = PersonalDatum.create! valid_attributes
        put :update, {:id => personal_datum.to_param, :personal_datum => valid_attributes}, valid_session
        assigns(:personal_datum).should eq(personal_datum)
      end

      it "redirects to the personal_datum" do
        personal_datum = PersonalDatum.create! valid_attributes
        put :update, {:id => personal_datum.to_param, :personal_datum => valid_attributes}, valid_session
        response.should redirect_to(personal_data_path)
      end
    end

    describe "with invalid params" do
      it "assigns the personal_datum as @personal_datum" do
        personal_datum = PersonalDatum.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PersonalDatum.any_instance.stub(:save).and_return(false)
        put :update, {:id => personal_datum.to_param, :personal_datum => {}}, valid_session
        assigns(:personal_datum).should eq(personal_datum)
      end

      it "re-renders the 'edit' template" do
        personal_datum = PersonalDatum.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PersonalDatum.any_instance.stub(:save).and_return(false)
        put :update, {:id => personal_datum.to_param, :personal_datum => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested personal_datum" do
      personal_datum = PersonalDatum.create! valid_attributes
      expect {
        delete :destroy, {:id => personal_datum.to_param}, valid_session
      }.to change(PersonalDatum, :count).by(-1)
    end

    it "redirects to the personal_data list" do
      personal_datum = PersonalDatum.create! valid_attributes
      delete :destroy, {:id => personal_datum.to_param}, valid_session
      response.should redirect_to(personal_data_url)
    end
  end

end
