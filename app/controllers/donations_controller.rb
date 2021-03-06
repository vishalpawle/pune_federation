class DonationsController < ApplicationController
#  before_action :set_donation, eccept: [:create ]


  # GET /donations
  # GET /donations.json
  def index
    @donations = Donation.all
  end

  # GET /donations/1
  # GET /donations/1.json
  def show
  end

  # GET /donations/new
  def new
    @donation = Donation.new
  end

  # GET /donations/1/edit
  def edit
  end

  # POST /donations
  # POST /donations.json
  def create
    @donation = Donation.new(donation_params)

    respond_to do |format|
      if @donation.save
        donation = @donation
        if donation.donar_email != ''
          UserMailer.donar(donation).deliver_now
        end
        user = User.where(:role => 'admin').collect(&:email)
        UserMailer.admindonar(user).deliver_now
        format.html { redirect_to root_url, notice: 'Thank you for supporting us we will contact you vary soon!!!' }
        format.json { render :show, status: :created, location: @donation }
      else
        format.html { render :new }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donations/1
  # PATCH/PUT /donations/1.json
  def update
    respond_to do |format|
      if @donation.update(donation_params)
        format.html { redirect_to @donation, notice: 'Donation was successfully updated.' }
        format.json { render :show, status: :ok, location: @donation }
      else
        format.html { render :edit }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donations/1
  # DELETE /donations/1.json
  def destroy
    @donation = Donation.find(params[:id])
    if @donation != nil
      @donation.destroy
    end
    respond_to do |format|
      format.html { redirect_to donations_url, notice: 'Donation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donation
      @donation = Donation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donation_params
      params.require(:donation).permit(:donar_name, :donar_email, :donar_mobile, :to_project, :how_did_you_find_us, :donation_comment, :account_flag, :bank_name, :account_no, :ifsc_code, :dd_name, :followup_with_donar, :donation_remarks, :receive_donation, :donation_amount)
    end
end
