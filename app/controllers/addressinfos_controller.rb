class AddressinfosController < ApplicationController
  before_action :set_addressinfo, only: [:show, :edit, :update, :destroy]

  # GET /addressinfos
  # GET /addressinfos.json
  def index
    @addressinfos = Addressinfo.all
  end

  # GET /addressinfos/1
  # GET /addressinfos/1.json
  def show
  end

  # GET /addressinfos/new
  def new
    @member = Member.find(params[:member_id])
    @addressinfo = Addressinfo.new
  end

  # GET /addressinfos/1/edit
  def edit
  end

  # POST /addressinfos
  # POST /addressinfos.json
  def create
    @member = Member.find(params[:member_id])
    @addressinfo = @member.build_addressinfo(addressinfo_params)

    respond_to do |format|
      if @addressinfo.save
        format.html { redirect_to new_member_contactinfo_path(@addressinfo.member.id), notice: 'Addressinfo was successfully created.' }
        format.json { render :show, status: :created, location: @addressinfo }
      else
        format.html { render :new }
        format.json { render json: @addressinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addressinfos/1
  # PATCH/PUT /addressinfos/1.json
  def update
    respond_to do |format|
      if @addressinfo.update(addressinfo_params)
        format.html { redirect_to @addressinfo, notice: 'Addressinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @addressinfo }
      else
        format.html { render :edit }
        format.json { render json: @addressinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addressinfos/1
  # DELETE /addressinfos/1.json
  def destroy
    @addressinfo.destroy
    respond_to do |format|
      format.html { redirect_to addressinfos_url, notice: 'Addressinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addressinfo
      @addressinfo = Addressinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def addressinfo_params
      params.require(:addressinfo).permit(:address_1, :address_2, :village, :taluka, :city, :pin, :state, :member_id)
    end
end
