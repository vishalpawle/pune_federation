require 'prawn'
require 'htmltoword'
require 'prawn/table'
class MembersController < ApplicationController
#  load_and_authorize_resource :eccept => [:new, :create, :tirmsconditions]

  def index

    if user_signed_in?
      if current_user.role == 'admin' || current_user.role == 'clerk'
        @members = Member.where(:suspend => nil).where(:delete_flag =>  nil).last(15)
      else
        @members = current_user.member
      end
    end
  end
  def laststape
  end
  def tempdelete
    @member = Member.find(params[:member_id])
    authorize! :tempdelete, @member
    if request.put?
      respond_to do |format|
      @member.delete_flag = true
      if @member.save
        if @member.user != nil
          User.destroy(@member.user)
        end
        format.html {redirect_to members_path, notice: 'Member deleted successfully!' }
      else
        format.html { redirect_to members_path, notice: 'unaible to process try again '}
      end
      end
    end
  end

  def clerklevel
    @member = Member.find(params[:member_id])
    authorize! :clerklevel, @member

    if request.put?

      @member.receipt_no = params[:receipt_no]
      @member.fee_receive_flag = params[:fee_receive_flag]
      @member.fee_amt = params[:fee_amt]
      @member.clerk_flag = true
      respond_to do |format|

      if @member.save
        # Mail method will take place
        member = @member
        user = User.where(:role => 'admin').collect(&:email)
        UserMailer.clerklevel(member, user).deliver_now
        format.html {redirect_to members_path, notice: 'Request approved and sent to admin! ' }
      else
        format.html { redirect_to members_path, notice: 'unaible to save please try again!' }
      end
      end
    end
  end
  def serchmember
    if request.put? && params != nil
      @member = Member.where(:membership_no => params[:membership_no])
      @member.each do |m|
        redirect_to member_path(m.id)
      end
    end
  end
  def status

    if request.put? && params != nil

      @member = Member.where(:membership_no => params[:membership_no])
      @member.each do |m|
    respond_to do |format|

        if m.admin_flag != nil && m.clerk_flag != nil
          session[:memberid] = m.id
p 'session is,'
p session[:memberid]
          format.html { redirect_to new_user_registration_path, notice: '  ' }

        else
          format.html { redirect_to status_path, notice: 'Process not happened, please contact NFBM branch. ' }

          @message = "Process not happened with your application, please contact to NFBM branch."
        end
      end
    end
    end
  end
  def adminlevel
    @member = Member.find(params[:member_id])
    authorize! :adminlevel, @member

    if request.put?
      respond_to do |format|
      @member.admin_flag = true
      if @member.save
        if @member.contactinfo.email != ''
          member = @member
          mailwalababa= @member.contactinfo.email
          UserMailer.adminlevel(mailwalababa, member).deliver_now
        end
        format.html { redirect_to members_path, notice: 'This member is became confirm member with your organisation!' }
      else
        format.html { redirect_to adminlevel_path(@member.id), notice: 'unaible to process request please try again!' }
      end
      end
    end
  end
  def final
    @member = Member.find(params[:member_id])
  end
  def show
    @member = Member.find(params[:id])
    authorize! :read, @member
    respond_to do |format|
      format.html
      format.xml { render :xml => @member }

      format.pdf do
        pdf = MemberPdf.new(@member)
        send_data pdf.render, filename: "#{@member.membership_no}.pdf", type: 'application/pdf'
      end

    end
  end

  def tirmsconditions
    @user = User.where(:tirm_flag => true).last
  end
  def changerole
    @user = User.find(params[:user_id])
    authorize! :changerole, @user
    if request.put?
      respond_to do |format|
      @user.role = params[:role]
      if @user.save
        user = @user
        UserMailer.changerole(user).deliver_now
        format.html { redirect_to members_path, notice: 'Successfully power changed! ' }
      else
        format.html { redirect_to members_path, notice: 'Data was not saved.' }
      end
      end
    end
  end
  def suspend
    @member = Member.find(params[:member_id])
    authorize! :suspend, @member
    if request.put?
      respond_to do |format|
      @member.suspend = true
      @member.suspend_remarks = params[:suspend_remarks]
      if @member.save
        format.html { redirect_to members_path, notice: 'Suspended!' }
      else
        format.html { redirect_to members_path, notice: 'Unaible to request process this request. ' }
      end
      end
    end
  end
  def new
    m = Member.last
    if m == nil
      @mem = 1
    else
      @mem = m.id + 1
    end
    @member = Member.new
  end
  def create
    @member = Member.new(member_params)

    respond_to do |format|
      if @member.save
        format.html { redirect_to new_member_personalinfo_path(@member), notice: 'Data was successfully save.' }
        format.json { render :show, status: :created, location: @activity }
      else
        format.html { render :new }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @member = Member.find(params[:id])
    Member.destroy(@member.id)
    respond_to do |format|
      format.html { redirect_to members_url, notice: ' Member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    def member_params
      params.require(:member).permit(:terms_agree, :membership_no, :membership_register_date, :membership_class, :date_of_admission, :branch, :type_human, :first_name, :middle_name, :last_name, :date_of_birth, :gender, :occupation, :address_1, :address_2, :village, :taluka, :city, :pin, :state, :email, :contact_no, :mobile_no, :mobile_2, :have_you_disability, :type_disability, :percentage_disability, :since_age, :disability_reason, :marital_status, :wedding_anniversary_date, :spouse_type, :spouse_firstt_name, :spouse_middle_name, :spouse_sur_name, :no_of_family_members, :kids, :parents_dependent_on_you, :standard_passed, :professional_Qualification, :es_address_1, :es_address_2, :es_city, :es_pin, :es_state, :es_tell, :es_email, :designation, :department, :occupation_details, :annual_income, :unemployed_registered_details, :unemployed_registration_no, :employment_registration_date, :do_you_have_blindness, :blindness_issued_dr_name, :place, :certificate_no, :certificate_date, :percent_blindness_stated, :member_braille_books_circulating_library, :self_employment_aid, :scholarship_student_aid_scheme, :member_of_braille_jagriti_magazine, :placement_services, :medical_aid, :fgnp, :counselling_services, :any_others, :introduces_by, :member_submited_form_date, :old_member, :f_place, :id_proup, :id_no, :photo, :signature)
    end

end
