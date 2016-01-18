require 'test_helper'

class ProfessionalinfosControllerTest < ActionController::TestCase
  setup do
    @professionalinfo = professionalinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:professionalinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create professionalinfo" do
    assert_difference('Professionalinfo.count') do
      post :create, professionalinfo: { annual_income: @professionalinfo.annual_income, department: @professionalinfo.department, designation: @professionalinfo.designation, employment_registration_date: @professionalinfo.employment_registration_date, es_address_1: @professionalinfo.es_address_1, es_address_2: @professionalinfo.es_address_2, es_city: @professionalinfo.es_city, es_email: @professionalinfo.es_email, es_pin: @professionalinfo.es_pin, es_state: @professionalinfo.es_state, es_tell: @professionalinfo.es_tell, member_id: @professionalinfo.member_id, occupation_details: @professionalinfo.occupation_details, professional_Qualification: @professionalinfo.professional_Qualification, standard_passed: @professionalinfo.standard_passed, unemployed_registered_details: @professionalinfo.unemployed_registered_details, unemployed_registration_no: @professionalinfo.unemployed_registration_no }
    end

    assert_redirected_to professionalinfo_path(assigns(:professionalinfo))
  end

  test "should show professionalinfo" do
    get :show, id: @professionalinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @professionalinfo
    assert_response :success
  end

  test "should update professionalinfo" do
    patch :update, id: @professionalinfo, professionalinfo: { annual_income: @professionalinfo.annual_income, department: @professionalinfo.department, designation: @professionalinfo.designation, employment_registration_date: @professionalinfo.employment_registration_date, es_address_1: @professionalinfo.es_address_1, es_address_2: @professionalinfo.es_address_2, es_city: @professionalinfo.es_city, es_email: @professionalinfo.es_email, es_pin: @professionalinfo.es_pin, es_state: @professionalinfo.es_state, es_tell: @professionalinfo.es_tell, member_id: @professionalinfo.member_id, occupation_details: @professionalinfo.occupation_details, professional_Qualification: @professionalinfo.professional_Qualification, standard_passed: @professionalinfo.standard_passed, unemployed_registered_details: @professionalinfo.unemployed_registered_details, unemployed_registration_no: @professionalinfo.unemployed_registration_no }
    assert_redirected_to professionalinfo_path(assigns(:professionalinfo))
  end

  test "should destroy professionalinfo" do
    assert_difference('Professionalinfo.count', -1) do
      delete :destroy, id: @professionalinfo
    end

    assert_redirected_to professionalinfos_path
  end
end
