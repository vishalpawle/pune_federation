class ScriberequestsController < ApplicationController
  before_action :set_scriberequest, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /scriberequests
  # GET /scriberequests.json
  def index
    if user_signed_in? && current_user.role == 'admin'
      @scriberequests = Scriberequest.all
    else
      @scriberequests = current_user.member.scriberequests
    end
  end

  # GET /scriberequests/1
  # GET /scriberequests/1.json
  def show
  end

  # GET /scriberequests/new
  def new
    @scriberequest = Scriberequest.new
  end

  # GET /scriberequests/1/edit
  def edit
  end

  # POST /scriberequests
  # POST /scriberequests.json
  def create
    @scriberequest = Scriberequest.new(scriberequest_params)

    respond_to do |format|
      if @scriberequest.save
        u = User.where(:role => 'admin').collect(&:email)
        if @scriberequest.member_email != ''
          scr = @scriberequest
          UserMailer.infotomember(scr, u).deliver_now
        end
        UserMailer.infotoadmin(scr, u).deliver_now
        format.html { redirect_to @scriberequest, notice: 'Scriberequest was successfully created.' }
        format.json { render :show, status: :created, location: @scriberequest }
      else
        format.html { render :new }
        format.json { render json: @scriberequest.errors, status: :unprocessable_entity }
      end
    end
  end
  def approverequest
    @scriberequest = Scriberequest.find(params[:scriberequest_id])
    if request.put?
      @scriberequest.scribe_first_name = params[:scribe_first_name]
      @scriberequest.scribe_last_name = params[:scribe_last_name]
      @scriberequest.scribe_email = params[:scribe_email]
      @scriberequest.scribe_mobile = params[:scribe_mobile]
      @scriberequest.request_status = "Accepted"
      if @scriberequest.save
        if @scriberequest.scribe_email != ''
          scrb = @scriberequest
          UserMailer.mailtoscribe(scrb).deliver_now
        end
        if @scriberequest.member_email != ''
          scrm = @scriberequest
          UserMailer.scribeinfotomember(scrm).deliver_now
        end
        redirect_to scriberequests_path
      end
    end
  end
  def rejectrequest
    @scriberequest = Scriberequest.find(params[:scriberequest_id])
    if request.put?
      @scriberequest.rejection_reason = params[:rejection_reason]
      @scriberequest.request_status = 'Rejected'
      if @scriberequest.save
        if @scriberequest.member_email != ''
          scr = @scriberequest
          UserMailer.rejectedrequest(scr).deliver_now
        end
      redirect_to scriberequests_path
      end
    end
  end
  # PATCH/PUT /scriberequests/1
  # PATCH/PUT /scriberequests/1.json
  def update
    respond_to do |format|
      if @scriberequest.update(scriberequest_params)
        format.html { redirect_to @scriberequest, notice: 'Scriberequest was successfully updated.' }
        format.json { render :show, status: :ok, location: @scriberequest }
      else
        format.html { render :edit }
        format.json { render json: @scriberequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scriberequests/1
  # DELETE /scriberequests/1.json
  def destroy
    @scriberequest.destroy
    respond_to do |format|
      format.html { redirect_to scriberequests_url, notice: 'Scriberequest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scriberequest
      @scriberequest = Scriberequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scriberequest_params
      params.require(:scriberequest).permit(:member_name, :member_email, :member_mobile, :exam_start_date, :exam_end_date, :exam_duration, :exam_start_time, :exam_end_time, :type_of_exam, :mode_of_exam, :what_type_of_scribe, :medium_of_exam, :address_1, :address_2, :city, :pin, :state, :exam_discription, :scribe_first_name, :scribe_last_name, :scribe_email, :scribe_mobile, :rejection_reason, :request_status, :member_id)
    end
end
