class ServiceinfosController < ApplicationController
  before_action :set_serviceinfo, only: [:show, :edit, :update, :destroy]

  # GET /serviceinfos
  # GET /serviceinfos.json
  def index
    @serviceinfos = Serviceinfo.all
  end

  # GET /serviceinfos/1
  # GET /serviceinfos/1.json
  def show
  end

  # GET /serviceinfos/new
  def new
    @member = Member.find(params[:member_id])
    @serviceinfo = Serviceinfo.new
  end

  # GET /serviceinfos/1/edit
  def edit
  end

  # POST /serviceinfos
  # POST /serviceinfos.json
  def create
    @member = Member.find(params[:member_id])
    @serviceinfo = @member.build_serviceinfo(serviceinfo_params)

    respond_to do |format|
      if @serviceinfo.save
        format.html { redirect_to new_member_documentinfo_path(@serviceinfo.member.id), notice: 'Serviceinfo was successfully created.' }
        format.json { render :show, status: :created, location: @serviceinfo }
      else
        format.html { render :new }
        format.json { render json: @serviceinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /serviceinfos/1
  # PATCH/PUT /serviceinfos/1.json
  def update
    respond_to do |format|
      if @serviceinfo.update(serviceinfo_params)
        format.html { redirect_to @serviceinfo, notice: 'Serviceinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @serviceinfo }
      else
        format.html { render :edit }
        format.json { render json: @serviceinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serviceinfos/1
  # DELETE /serviceinfos/1.json
  def destroy
    @serviceinfo.destroy
    respond_to do |format|
      format.html { redirect_to serviceinfos_url, notice: 'Serviceinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serviceinfo
      @serviceinfo = Serviceinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def serviceinfo_params
      params.require(:serviceinfo).permit(:member_braille_books_circulating_library, :self_employment_aid, :scholarship_student_aid_scheme, :member_of_braille_jagriti_magazine, :placement_services, :medical_aid, :counselling_services, :any_others, :member_id)
    end
end
