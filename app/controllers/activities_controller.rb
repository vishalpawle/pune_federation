class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
#  load_and_authorize_resource

  # GET /activities
  # GET /activities.json
  def index
    @activities = Activity.where(:hdn_boolean => nil)
    @acti = Activity.where(:hdn_boolean => true)
  end

  # GET /activities/1
  # GET /activities/1.json
  def show
  end

  # GET /activities/new
  def new
    @activity = Activity.new
    authorize! :new, @activity
  end

  # GET /activities/1/edit
  def edit
    authorize! :edit, @activity
  end

  # POST /activities
  # POST /activities.json
  def create
    @activity = Activity.new(activity_params)

    respond_to do |format|
      if @activity.save
        format.html { redirect_to @activity, notice: 'Activity was successfully created.' }
        format.json { render :show, status: :created, location: @activity }
      else
        format.html { render :new }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activities/1
  # PATCH/PUT /activities/1.json
  def update
    respond_to do |format|
      if @activity.update(activity_params)
        format.html { redirect_to @activity, notice: 'Activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity }
      else
        format.html { render :edit }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activities/1
  # DELETE /activities/1.json
  def destroy
    authorize! :destroy, @activity
    @activity.destroy
    respond_to do |format|
      format.html { redirect_to activities_url, notice: 'Activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def anulshow
    @activity = Activity.where(:hdn_boolean => true).last
  end
  def anulupdate
    @activity = Activity.find(params[:activity_id])
    authorize! :anulupdate, @activity
    if request.put?
    @activity.anual_activity = params[:anual]
    if @activity.save
      redirect_to activities_path
#      notice: 'Anual activity content successfully updated'
    else
      #return on same page
    end
    end
  end
  def anulgenerate
    authorize! :anulgenrate, @activity
    if request.post?
    @activity = Activity.new()
    @activity.anual_activity = params[:anul]
    @activity.hdn_boolean = true
    @activity.activity_title = 'a'
    @activity.activity_created_date = Date.today
    @activity.activity_discription = 'a'
    if @activity.save
      redirect_to activities_path
    else
      # do nothing
    end
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_params
      params.require(:activity).permit(:anual_activity, :hdn_boolean, :activity_title, :activity_created_date, :activity_discription, :photo_1, :photo_2, :photo_3)
    end
end
