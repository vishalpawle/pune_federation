class CertificateinfosController < ApplicationController
  before_action :set_certificateinfo, only: [:show, :edit, :update, :destroy]

  # GET /certificateinfos
  # GET /certificateinfos.json
  def index
    @certificateinfos = Certificateinfo.all
  end

  # GET /certificateinfos/1
  # GET /certificateinfos/1.json
  def show
  end

  # GET /certificateinfos/new
  def new
    @member = Member.find(params[:member_id])
    @certificateinfo = Certificateinfo.new
  end

  # GET /certificateinfos/1/edit
  def edit
  end

  # POST /certificateinfos
  # POST /certificateinfos.json
  def create
    @member = Member.find(params[:member_id])
    @certificateinfo = @member.build_certificateinfo(certificateinfo_params)

    respond_to do |format|
      if @certificateinfo.save
        format.html { redirect_to new_member_serviceinfo_path(@certificateinfo.member.id), notice: 'Certificateinfo was successfully created.' }
        format.json { render :show, status: :created, location: @certificateinfo }
      else
        format.html { render :new }
        format.json { render json: @certificateinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /certificateinfos/1
  # PATCH/PUT /certificateinfos/1.json
  def update
    respond_to do |format|
      if @certificateinfo.update(certificateinfo_params)
        format.html { redirect_to @certificateinfo, notice: 'Certificateinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @certificateinfo }
      else
        format.html { render :edit }
        format.json { render json: @certificateinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /certificateinfos/1
  # DELETE /certificateinfos/1.json
  def destroy
    @certificateinfo.destroy
    respond_to do |format|
      format.html { redirect_to certificateinfos_url, notice: 'Certificateinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_certificateinfo
      @certificateinfo = Certificateinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def certificateinfo_params
      params.require(:certificateinfo).permit(:do_you_have_blindness, :blindness_issued_dr_name, :place, :certificate_no, :certificate_date, :percent_blindness_stated, :do_you_know_braille, :member_id)
    end
end
