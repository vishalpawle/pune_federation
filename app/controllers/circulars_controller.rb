class CircularsController < ApplicationController
  before_action :set_circular, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  before_filter :authenticate_user!

  # GET /circulars
  # GET /circulars.json
  def index
    @c1 = Circular.where(:circular_for => 'Banking circulars')
    @c2 = Circular.where(:circular_for => 'Circular related to Consessions, schemes, and various allowances')
    @c3 = Circular.where(:circular_for => 'Disability certification circulars')
    @c4 = Circular.where(:circular_for => 'Educational Circulars')
    @c5 = Circular.where(:circular_for => 'Circulars for Government employees')
    @c6 = Circular.where(:circular_for => 'Circular issued by maharashtra government')
    @c7 = Circular.where(:circular_for => 'Circular issued by panchayat')
    @c8 = Circular.where(:circular_for => 'Circular issued by zilla parishat')
    @c9 = Circular.where(:circular_for => 'Circculars for office berrors / executive members')
    @circulars = Circular.all
    @cp = Circular.where(:circular_for => 'Circular issued by mahanagar palika')

  end

  # GET /circulars/1
  # GET /circulars/1.json
  def show
  end

  # GET /circulars/new
  def new
    @circular = Circular.new
  end

  # GET /circulars/1/edit
  def edit
  end

  # POST /circulars
  # POST /circulars.json
  def create
    @circular = Circular.new(circular_params)

    respond_to do |format|
      if @circular.save
        format.html { redirect_to @circular, notice: 'Circular was successfully created.' }
        format.json { render :show, status: :created, location: @circular }
      else
        format.html { render :new }
        format.json { render json: @circular.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /circulars/1
  # PATCH/PUT /circulars/1.json
  def update
    respond_to do |format|
      if @circular.update(circular_params)
        format.html { redirect_to @circular, notice: 'Circular was successfully updated.' }
        format.json { render :show, status: :ok, location: @circular }
      else
        format.html { render :edit }
        format.json { render json: @circular.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /circulars/1
  # DELETE /circulars/1.json
  def destroy
    @circular.destroy
    respond_to do |format|
      format.html { redirect_to circulars_url, notice: 'Circular was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_circular
      @circular = Circular.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def circular_params
      params.require(:circular).permit(:circular_for, :circular_discription, :attachment)
    end
end
