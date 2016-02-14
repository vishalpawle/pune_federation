class PersonalinfosController < ApplicationController
  before_action :set_personalinfo, only: [:show, :edit, :update, :destroy]

  # GET /personalinfos
  # GET /personalinfos.json
  def index
    @member = Member.find(params[:member_id])

    @personalinfos = @member.personalinfo
  end

  # GET /personalinfos/1
  # GET /personalinfos/1.json
  def show
  end

  # GET /personalinfos/new
  def new
    @member = Member.find(params[:member_id])
#    @personalinfo = @member.personalinfo.build(personalinfo)
    @personalinfo = Personalinfo.new
  end

  # GET /personalinfos/1/edit
  def edit
  end

  # POST /personalinfos
  # POST /personalinfos.json
  def create
    @member = Member.find(params[:member_id])

    @personalinfo = @member.build_personalinfo(personalinfo_params)

    respond_to do |format|
      if @personalinfo.save
        format.html { redirect_to new_member_addressinfo_path(@personalinfo.member.id), notice: 'Personalinfo was successfully created.' }
        format.json { render :show, status: :created, location: @personalinfo }
      else
        format.html { render :new }
        format.json { render json: @personalinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personalinfos/1
  # PATCH/PUT /personalinfos/1.json
  def update
    respond_to do |format|
      if @personalinfo.update(personalinfo_params)
        format.html { redirect_to member_path(@personalinfo.member.id), notice: 'Personalinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @personalinfo }
      else
        format.html { render :edit }
        format.json { render json: @personalinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personalinfos/1
  # DELETE /personalinfos/1.json
  def destroy
    @personalinfo.destroy
    respond_to do |format|
      format.html { redirect_to personalinfos_url, notice: 'Personalinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personalinfo
      @personalinfo = Personalinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personalinfo_params
      params.require(:personalinfo).permit(:type_human, :first_name, :middle_name, :last_name, :date_of_birth, :gender, :occupation, :member_id)
    end
end
