class ContactinfosController < ApplicationController
  before_action :set_contactinfo, only: [:show, :edit, :update, :destroy]

  # GET /contactinfos
  # GET /contactinfos.json
  def index
    @member = Member.find(params[:member_id])
    @contactinfos = @member.contactinfo
  end

  # GET /contactinfos/1
  # GET /contactinfos/1.json
  def show
  end

  # GET /contactinfos/new
  def new
    @member = Member.find(params[:member_id])
    @contactinfo = Contactinfo.new
  end

  # GET /contactinfos/1/edit
  def edit
  end

  # POST /contactinfos
  # POST /contactinfos.json
  def create
    @member = Member.find(params[:member_id])
    @contactinfo = @member.build_contactinfo(contactinfo_params)

    respond_to do |format|
      if @contactinfo.save
        format.html { redirect_to new_member_disabilityinfo_path(@contactinfo.member.id), notice: 'Contactinfo was successfully created.' }
        format.json { render :show, status: :created, location: @contactinfo }
      else
        format.html { render :new }
        format.json { render json: @contactinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contactinfos/1
  # PATCH/PUT /contactinfos/1.json
  def update
    respond_to do |format|
      if @contactinfo.update(contactinfo_params)
        format.html { redirect_to member_path(@contactinfo.member.id), notice: 'Contactinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @contactinfo }
      else
        format.html { render :edit }
        format.json { render json: @contactinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contactinfos/1
  # DELETE /contactinfos/1.json
  def destroy
    @contactinfo.destroy
    respond_to do |format|
      format.html { redirect_to contactinfos_url, notice: 'Contactinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contactinfo
      @contactinfo = Contactinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contactinfo_params
      params.require(:contactinfo).permit(:email, :fax, :contact_no, :mobile_no, :mobile_2, :member_id)
    end
end
