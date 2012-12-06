require 'spec_helper'
 describe TimeZonesController do

  def valid_attributes
    { :user_id=>4,:time_zone=>"5:30" }
  end
  def valid_session
    {}
  end
  describe "GET new" do
    it "assigns a new time_zone as @time_zone" do
      get :new, {}, valid_session
      assigns(:time_zone).should be_a_new(TimeZone)
    end
  end

  describe "GET edit" do
    it "assigns the requested time_zone as @time_zone" do
      time_zone = TimeZone.create! valid_attributes
      get :edit, {:id => time_zone.to_param}, valid_session
      assigns(:time_zone).should eq(time_zone)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new TimeZone" do
        expect {
          post :create, {:time_zone => valid_attributes}, valid_session
        }.to change(TimeZone, :count).by(1)
      end

      it "assigns a newly created time_zone as @time_zone" do
        post :create, {:time_zone => valid_attributes}, valid_session
        assigns(:time_zone).should be_a(TimeZone)
        assigns(:time_zone).should be_persisted
      end
      #it "redirects to the created time_zone" do
      #  post :create, {:time_zone => valid_attributes}, valid_session
      #  response.should redirect_to(TimeZone.last)
      #end
    end
    describe "with invalid params" do
      it "assigns a newly created but unsaved time_zone as @time_zone" do
        # Trigger the behavior that occurs when invalid params are submitted
        TimeZone.any_instance.stub(:save).and_return(false)
        post :create, {:time_zone => { "user_id" => "invalid value" }}, valid_session
        assigns(:time_zone).should be_a_new(TimeZone)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        TimeZone.any_instance.stub(:save).and_return(false)
        post :create, {:time_zone => { "user_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end
  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested time_zone" do
        time_zone = TimeZone.create! valid_attributes
        # Assuming there are no other time_zones in the database, this
        # specifies that the TimeZone created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        TimeZone.any_instance.should_receive(:update_attributes).with({ "user_id" => "1" })
        put :update, {:id => time_zone.to_param, :time_zone => { "user_id" => "1" }}, valid_session
      end

      it "assigns the requested time_zone as @time_zone" do
        time_zone = TimeZone.create! valid_attributes
        put :update, {:id => time_zone.to_param, :time_zone => valid_attributes}, valid_session
        assigns(:time_zone).should eq(time_zone)
      end

      it "redirects to the time_zone" do
        time_zone = TimeZone.create! valid_attributes
        put :update, {:id => time_zone.to_param, :time_zone => valid_attributes}, valid_session
        response.should redirect_to(edit_time_zone_path)
      end
    end
    describe "with invalid params" do
      it "assigns the time_zone as @time_zone" do
        time_zone = TimeZone.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TimeZone.any_instance.stub(:save).and_return(false)
        put :update, {:id => time_zone.to_param, :time_zone => { "user_id" => "invalid value" }}, valid_session
        assigns(:time_zone).should eq(time_zone)
      end
      it "re-renders the 'edit' template" do
        time_zone = TimeZone.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TimeZone.any_instance.stub(:save).and_return(false)
        put :update, {:id => time_zone.to_param, :time_zone => { "user_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end
  describe "DELETE destroy" do
    it "destroys the requested time_zone" do
      time_zone = TimeZone.create! valid_attributes
      expect {
        delete :destroy, {:id => time_zone.to_param}, valid_session
      }.to change(TimeZone, :count).by(-1)
    end
    it "redirects to the time_zones list" do
      time_zone = TimeZone.create! valid_attributes
      delete :destroy, {:id => time_zone.to_param}, valid_session
      response.should redirect_to(time_zones_url)
    end
  end

end
