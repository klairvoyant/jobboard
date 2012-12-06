require 'spec_helper'

describe SearchPreferencesController do
  def valid_attributes
    { :category_id=>4,:city=>"Thrissur",:state=>"kerala",:user_id=>3,:zipcode=>"456789"}
  end
  def valid_session
    {}
  end

  describe "GET new" do
    it "assigns a new search_preference as @search_preference" do
      get :new, {}, valid_session
      assigns(:search_preference).should be_a_new(SearchPreference)
    end
  end

  describe "GET edit" do
    it "assigns the requested search_preference as @search_preference" do
      search_preference = SearchPreference.create! valid_attributes
      get :edit, {:id => search_preference.to_param}, valid_session
      assigns(:search_preference).should eq(search_preference)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new SearchPreference" do
        expect {
          post :create, {:search_preference => valid_attributes}, valid_session
        }.to change(SearchPreference, :count).by(1)
      end

      it "assigns a newly created search_preference as @search_preference" do
        post :create, {:search_preference => valid_attributes}, valid_session
        assigns(:search_preference).should be_a(SearchPreference)
        assigns(:search_preference).should be_persisted
      end

      #it "redirects to the created search_preference" do
      #  post :create, {:search_preference => valid_attributes}, valid_session
      #  response.should redirect_to(@search_preference)
      #end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved search_preference as @search_preference" do
        # Trigger the behavior that occurs when invalid params are submitted
        SearchPreference.any_instance.stub(:save).and_return(false)
        post :create, {:search_preference => { "user_id" => "invalid value" }}, valid_session
        assigns(:search_preference).should be_a_new(SearchPreference)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        SearchPreference.any_instance.stub(:save).and_return(false)
        post :create, {:search_preference => { "user_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested search_preference" do
        search_preference = SearchPreference.create! valid_attributes
        # Assuming there are no other search_preferences in the database, this
        # specifies that the SearchPreference created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        SearchPreference.any_instance.should_receive(:update_attributes).with({ "user_id" => "1" })
        put :update, {:id => search_preference.to_param, :search_preference => { "user_id" => "1" }}, valid_session
      end

      it "assigns the requested search_preference as @search_preference" do
        search_preference = SearchPreference.create! valid_attributes
        put :update, {:id => search_preference.to_param, :search_preference => valid_attributes}, valid_session
        assigns(:search_preference).should eq(search_preference)
      end

      it "redirects to the search_preference" do
        search_preference = SearchPreference.create! valid_attributes
        put :update, {:id => search_preference.to_param, :search_preference => valid_attributes}, valid_session
        response.should redirect_to(edit_search_preference_path)
      end
    end

    describe "with invalid params" do
      it "assigns the search_preference as @search_preference" do
        search_preference = SearchPreference.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SearchPreference.any_instance.stub(:save).and_return(false)
        put :update, {:id => search_preference.to_param, :search_preference => { "user_id" => "invalid value" }}, valid_session
        assigns(:search_preference).should eq(search_preference)
      end

      it "re-renders the 'edit' template" do
        search_preference = SearchPreference.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SearchPreference.any_instance.stub(:save).and_return(false)
        put :update, {:id => search_preference.to_param, :search_preference => { "user_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested search_preference" do
      search_preference = SearchPreference.create! valid_attributes
      expect {
        delete :destroy, {:id => search_preference.to_param}, valid_session
      }.to change(SearchPreference, :count).by(-1)
    end

    it "redirects to the search_preferences list" do
      search_preference = SearchPreference.create! valid_attributes
      delete :destroy, {:id => search_preference.to_param}, valid_session
      response.should redirect_to(search_preferences_url)
    end
  end

end
