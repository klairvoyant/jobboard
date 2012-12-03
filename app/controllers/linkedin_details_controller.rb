class LinkedinDetailsController < ApplicationController
  require 'linkedin'
  before_filter :authenticate_user!
  load_and_authorize_resource
  # GET /linkedin_details
  # GET /linkedin_details.json
  def index
    #@linkedin_details = LinkedinDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @linkedin_details }
    end
  end

  # GET /linkedin_details/1
  # GET /linkedin_details/1.json
  def show
    #@linkedin_detail = LinkedinDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @linkedin_detail }
    end
  end

  # GET /linkedin_details/new
  # GET /linkedin_details/new.json
  def new
    #@linkedin_detail = LinkedinDetail.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @linkedin_detail }
    end
  end

  # GET /linkedin_details/1/edit
  def edit
    #@linkedin_detail = LinkedinDetail.find(params[:id])
  end

  # POST /linkedin_details
  # POST /linkedin_details.json
  def create
    #@linkedin_detail = LinkedinDetail.new(params[:linkedin_detail])
    respond_to do |format|
      if @linkedin_detail.save
        format.html { redirect_to @linkedin_detail, notice: 'Linkedin detail was successfully  created.' }
        format.json { render json: @linkedin_detail, status: :created, location: @linkedin_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @linkedin_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /linkedin_details/1
  # PUT /linkedin_details/1.json
  def update
    #@linkedin_detail = LinkedinDetail.find(params[:id])

    respond_to do |format|
      if @linkedin_detail.update_attributes(params[:linkedin_detail])
        format.html { redirect_to @linkedin_detail, notice: 'Linkedin detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @linkedin_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /linkedin_details/1
  # DELETE /linkedin_details/1.json
  def destroy
    #@linkedin_detail = LinkedinDetail.find(params[:id])
    @linkedin_detail.destroy

    respond_to do |format|
      format.html { redirect_to linkedin_details_url }
      format.json { head :no_content }
    end
  end

  def linkedinconnect
    client = LinkedIn::Client.new("dn03xwa9eao6", "pOud139uvFMKw2jp")
    request_token = client.request_token(:oauth_callback =>"http://#{request.host_with_port}/linkedin_details/callback")
    session[:rtoken] = request_token.token
    session[:rsecret] = request_token.secret
    redirect_to client.request_token.authorize_url

  end

  def callback

    session[:user_id]=current_user.id
    client = LinkedIn::Client.new("dn03xwa9eao6", "pOud139uvFMKw2jp")
    if session[:atoken].nil?
      if params[:oauth_verifier].nil?
        redirect_to new_resume_personal_datum_path
        return
      else
      pin = params[:oauth_verifier]
      atoken, asecret = client.authorize_from_request(session[:rtoken], session[:rsecret], pin)
      session[:atoken] = atoken
      session[:asecret] = asecret
      end
    else
      client.authorize_from_access(session[:atoken], session[:asecret])
    end
     @profile= client.profile(:fields => %w(first_name last_name headline public_profile_url))



      @linkedin_detail = LinkedinDetail.new
      @linkedin_detail.first_name=@profile.first_name
      @linkedin_detail.lastName=@profile.last_name
      @linkedin_detail.headline=@profile.headline
      @linkedin_detail.public_profile_url=@profile.public_profile_url
      @linkedin_detail.save

      @resume = Resume.new
      @resume.user_id=current_user.id
      @resume.option_no=2
      @resume.save
      redirect_to personal_data_path


  end

  def linkedinconnecsecond
    client = LinkedIn::Client.new("dn03xwa9eao6", "pOud139uvFMKw2jp")
    request_token = client.request_token(:oauth_callback =>"http://#{request.host_with_port}/linkedin_details/callbacksecond")
    session[:rtoken] = request_token.token
    session[:rsecret] = request_token.secret
    redirect_to client.request_token.authorize_url

  end
  def callbacksecond

    session[:user_id]=current_user.id
    client = LinkedIn::Client.new("dn03xwa9eao6", "pOud139uvFMKw2jp")
    if session[:atoken].nil?
       if params[:oauth_verifier].nil?
         redirect_to new_resume_personal_datum_path
         return

       else
         pin = params[:oauth_verifier]
         atoken, asecret = client.authorize_from_request(session[:rtoken], session[:rsecret], pin)
         session[:atoken] = atoken
         session[:asecret] = asecret
       end

    else
      client.authorize_from_access(session[:atoken], session[:asecret])

    end
    @profile= client.profile(:fields => %w(first_name last_name headline public_profile_url))
    session[:profile_link]=@profile.public_profile_url
    redirect_to new_resume_personal_datum_path

  end
end
