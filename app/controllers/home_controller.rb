class HomeController < ApplicationController
  def index
tirmcontent
    @activity = Activity.last(5)
    @team = Team.where(:category => 'Officer')

  end
  def tirmcontent
    @user = User.where(:tirm_flag => true)
    if user_signed_in?
      ur = current_user.id
    @u = User.find(ur)
    end
    if request.put? && params[:tirms] != nil
      @u.tirm_flag = true
      @u.tirms_content = params[:tirms]
      if @u.save
        redirect_to root_path, notice: 'data save'
      else
        render 'tirmcontent'
      end
    end
  end

  def calenderhelp
    respond_to do |format|
      format.js
    end
  end

end
