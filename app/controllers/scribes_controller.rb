class ScribesController < ApplicationController
  before_action :set_scribe, only: [:show, :edit, :update, :destroy]

  # GET /scribes
  # GET /scribes.json
  def index
    @scribes = Scribe.all
  end

  # GET /scribes/1
  # GET /scribes/1.json
  def show
  end

  # GET /scribes/new
  def new
    @scribe = Scribe.new
  end

  # GET /scribes/1/edit
  def edit
  end

  # POST /scribes
  # POST /scribes.json
  def create
    @scribe = Scribe.new(scribe_params)

    respond_to do |format|
      if @scribe.save
        if @scribe.email != nil
          scribe = @scribe
          UserMailer.dasaram(scribe).deliver_now
        end

        format.html { redirect_to @scribe, notice: 'Thank you we have received your request' }
        format.json { render :show, status: :created, location: @scribe }
      else
        format.html { render :new }
        format.json { render json: @scribe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scribes/1
  # PATCH/PUT /scribes/1.json
  def update
    respond_to do |format|
      if @scribe.update(scribe_params)
        format.html { redirect_to @scribe, notice: 'Scribe was successfully updated.' }
        format.json { render :show, status: :ok, location: @scribe }
      else
        format.html { render :edit }
        format.json { render json: @scribe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scribes/1
  # DELETE /scribes/1.json
  def destroy
    @scribe.destroy
    respond_to do |format|
      format.html { redirect_to scribes_url, notice: 'Scribe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scribe
      @scribe = Scribe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scribe_params
      params.require(:scribe).permit(:first_name, :last_name, :email, :mobile, :qualification, :type_join)
    end
end
