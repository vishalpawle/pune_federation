class ForminfosController < ApplicationController
  before_action :set_forminfo, only: [:show, :edit, :update, :destroy]

  # GET /forminfos
  # GET /forminfos.json
  def index
    @member = Member.find(params[:member_id])

    @forminfos = @member.forminfo
  end

  # GET /forminfos/1
  # GET /forminfos/1.json
  def show
  end

  # GET /forminfos/new
  def new
    @member = Member.find(params[:member_id])
    @forminfo = Forminfo.new
  end

  # GET /forminfos/1/edit
  def edit
  end

  # POST /forminfos
  # POST /forminfos.json
  def create
    @member = Member.find(params[:member_id])
    @forminfo = @member.build_forminfo(forminfo_params)

    respond_to do |format|
      if @forminfo.save
        member = @forminfo.member
        if member.contactinfo.email != ''
          mailholder = member.contactinfo.email
          UserMailer.wellcomemail(mailholder, member).deliver_now
        end
        format.html { redirect_to final_path(@forminfo.member.id), notice: 'Forminfo was successfully created.' }
        format.json { render :show, status: :created, location: @forminfo }
      else
        format.html { render :new }
        format.json { render json: @forminfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forminfos/1
  # PATCH/PUT /forminfos/1.json
  def update
    respond_to do |format|
      if @forminfo.update(forminfo_params)
        format.html { redirect_to @forminfo, notice: 'Forminfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @forminfo }
      else
        format.html { render :edit }
        format.json { render json: @forminfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forminfos/1
  # DELETE /forminfos/1.json
  def destroy
    @forminfo.destroy
    respond_to do |format|
      format.html { redirect_to forminfos_url, notice: 'Forminfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forminfo
      @forminfo = Forminfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forminfo_params
      params.require(:forminfo).permit(:introduces_by, :member_submited_form_date, :f_place, :form_details, :member_id)
    end
end
