class DisabilityinfosController < ApplicationController
  before_action :set_disabilityinfo, only: [:show, :edit, :update, :destroy]

  # GET /disabilityinfos
  # GET /disabilityinfos.json
  def index
    @member = Member.find(params[:member_id])

    @disabilityinfos = @member.disabilityinfo
  end

  # GET /disabilityinfos/1
  # GET /disabilityinfos/1.json
  def show
  end

  # GET /disabilityinfos/new
  def new
    @member = Member.find(params[:member_id])
    @disabilityinfo = Disabilityinfo.new
  end

  # GET /disabilityinfos/1/edit
  def edit
  end

  # POST /disabilityinfos
  # POST /disabilityinfos.json
  def create
    @member = Member.find(params[:member_id])
    @disabilityinfo = @member.build_disabilityinfo(disabilityinfo_params)

    respond_to do |format|
      if @disabilityinfo.save
        format.html { redirect_to new_member_maritalinfo_path(@disabilityinfo.member.id), notice: 'Disabilityinfo was successfully created.' }
        format.json { render :show, status: :created, location: @disabilityinfo }
      else
        format.html { render :new }
        format.json { render json: @disabilityinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disabilityinfos/1
  # PATCH/PUT /disabilityinfos/1.json
  def update
    respond_to do |format|
      if @disabilityinfo.update(disabilityinfo_params)
        format.html { redirect_to @disabilityinfo, notice: 'Disabilityinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @disabilityinfo }
      else
        format.html { render :edit }
        format.json { render json: @disabilityinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disabilityinfos/1
  # DELETE /disabilityinfos/1.json
  def destroy
    @disabilityinfo.destroy
    respond_to do |format|
      format.html { redirect_to disabilityinfos_url, notice: 'Disabilityinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disabilityinfo
      @disabilityinfo = Disabilityinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disabilityinfo_params
      params.require(:disabilityinfo).permit(:have_you_disability, :type_disability, :percentage_disability, :since_age, :disability_reason, :member_id)
    end
end
