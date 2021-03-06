class MaritalinfosController < ApplicationController
  before_action :set_maritalinfo, only: [:show, :edit, :update, :destroy]

  # GET /maritalinfos
  # GET /maritalinfos.json
  def index
    @member = Member.find(params[:member_id])

    @maritalinfos = @member.maritalinfo
  end

  # GET /maritalinfos/1
  # GET /maritalinfos/1.json
  def show
  end

  # GET /maritalinfos/new
  def new
    @member = Member.find(params[:member_id])

    @maritalinfo = Maritalinfo.new
  end

  # GET /maritalinfos/1/edit
  def edit
  end

  # POST /maritalinfos
  # POST /maritalinfos.json
  def create
    @member = Member.find(params[:member_id])

    @maritalinfo = @member.build_maritalinfo(maritalinfo_params)

    respond_to do |format|
      if @maritalinfo.save
        format.html { redirect_to new_member_professionalinfo_path(@maritalinfo.member.id), notice: 'Maritalinfo was successfully created.' }
        format.json { render :show, status: :created, location: @maritalinfo }
      else
        format.html { render :new }
        format.json { render json: @maritalinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maritalinfos/1
  # PATCH/PUT /maritalinfos/1.json
  def update
    respond_to do |format|
      if @maritalinfo.update(maritalinfo_params)
        format.html { redirect_to @maritalinfo, notice: 'Maritalinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @maritalinfo }
      else
        format.html { render :edit }
        format.json { render json: @maritalinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maritalinfos/1
  # DELETE /maritalinfos/1.json
  def destroy
    @maritalinfo.destroy
    respond_to do |format|
      format.html { redirect_to maritalinfos_url, notice: 'Maritalinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maritalinfo
      @maritalinfo = Maritalinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maritalinfo_params
      params.require(:maritalinfo).permit(:marital_status, :wedding_anniversary_date, :spouse_type, :spouse_firstt_name, :spouse_middle_name, :spouse_sur_name, :no_of_family_members, :kids, :parents_dependent_on_you, :member_id)
    end
end
