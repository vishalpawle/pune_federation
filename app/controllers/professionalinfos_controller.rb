class ProfessionalinfosController < ApplicationController
  before_action :set_professionalinfo, only: [:show, :edit, :update, :destroy]

  # GET /professionalinfos
  # GET /professionalinfos.json
  def index
    @member = Member.find(params[:member_id])

    @professionalinfos = @member.professionalinfo
  end

  # GET /professionalinfos/1
  # GET /professionalinfos/1.json
  def show
  end

  # GET /professionalinfos/new
  def new
    @member = Member.find(params[:member_id])
    @professionalinfo = Professionalinfo.new
  end

  # GET /professionalinfos/1/edit
  def edit
  end

  # POST /professionalinfos
  # POST /professionalinfos.json
  def create
    @member = Member.find(params[:member_id])
    @professionalinfo = @member.build_professionalinfo(professionalinfo_params)

    respond_to do |format|
      if @professionalinfo.save
        format.html { redirect_to new_member_certificateinfo_path(@professionalinfo.member.id), notice: 'Professionalinfo was successfully created.' }
        format.json { render :show, status: :created, location: @professionalinfo }
      else
        format.html { render :new }
        format.json { render json: @professionalinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /professionalinfos/1
  # PATCH/PUT /professionalinfos/1.json
  def update
    respond_to do |format|
      if @professionalinfo.update(professionalinfo_params)
        format.html { redirect_to @professionalinfo, notice: 'Professionalinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @professionalinfo }
      else
        format.html { render :edit }
        format.json { render json: @professionalinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professionalinfos/1
  # DELETE /professionalinfos/1.json
  def destroy
    @professionalinfo.destroy
    respond_to do |format|
      format.html { redirect_to professionalinfos_url, notice: 'Professionalinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professionalinfo
      @professionalinfo = Professionalinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def professionalinfo_params
      params.require(:professionalinfo).permit(:standard_passed, :professional_Qualification, :es_address_1, :es_address_2, :es_city, :es_pin, :es_state, :es_tell, :es_email, :designation, :department, :occupation_details, :annual_income, :unemployed_registered_details, :unemployed_registration_no, :employment_registration_date, :member_id)
    end
end
