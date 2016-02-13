class DocumentinfosController < ApplicationController
  before_action :set_documentinfo, only: [:show, :edit, :update, :destroy]

  # GET /documentinfos
  # GET /documentinfos.json
  def index
    @documentinfos = Documentinfo.all
  end

  # GET /documentinfos/1
  # GET /documentinfos/1.json
  def show
  end

  # GET /documentinfos/new
  def new
    @member = Member.find(params[:member_id])
    @documentinfo = Documentinfo.new
  end

  # GET /documentinfos/1/edit
  def edit
  end

  # POST /documentinfos
  # POST /documentinfos.json
  def create
    @member = Member.find(params[:member_id])
    @documentinfo = @member.build_documentinfo(documentinfo_params)

    respond_to do |format|
      if @documentinfo.save
        format.html { redirect_to new_member_forminfo_path(@documentinfo.member.id), notice: 'Documentinfo was successfully created.' }
        format.json { render :show, status: :created, location: @documentinfo }
      else
        format.html { render :new }
        format.json { render json: @documentinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /documentinfos/1
  # PATCH/PUT /documentinfos/1.json
  def update
    respond_to do |format|
      if @documentinfo.update(documentinfo_params)
        format.html { redirect_to @documentinfo, notice: 'Documentinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @documentinfo }
      else
        format.html { render :edit }
        format.json { render json: @documentinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documentinfos/1
  # DELETE /documentinfos/1.json
  def destroy
    @documentinfo.destroy
    respond_to do |format|
      format.html { redirect_to documentinfos_url, notice: 'Documentinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_documentinfo
      @documentinfo = Documentinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def documentinfo_params
      params.require(:documentinfo).permit(:type_id_proup, :id_no, :member_id, :photo, :signature)
    end
end
