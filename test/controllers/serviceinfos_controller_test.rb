require 'test_helper'

class ServiceinfosControllerTest < ActionController::TestCase
  setup do
    @serviceinfo = serviceinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:serviceinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create serviceinfo" do
    assert_difference('Serviceinfo.count') do
      post :create, serviceinfo: { any_others: @serviceinfo.any_others, counselling_services: @serviceinfo.counselling_services, medical_aid: @serviceinfo.medical_aid, member_braille_books_circulating_library: @serviceinfo.member_braille_books_circulating_library, member_id: @serviceinfo.member_id, member_of_braille_jagriti_magazine: @serviceinfo.member_of_braille_jagriti_magazine, placement_services: @serviceinfo.placement_services, scholarship_student_aid_scheme: @serviceinfo.scholarship_student_aid_scheme, self_employment_aid: @serviceinfo.self_employment_aid }
    end

    assert_redirected_to serviceinfo_path(assigns(:serviceinfo))
  end

  test "should show serviceinfo" do
    get :show, id: @serviceinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @serviceinfo
    assert_response :success
  end

  test "should update serviceinfo" do
    patch :update, id: @serviceinfo, serviceinfo: { any_others: @serviceinfo.any_others, counselling_services: @serviceinfo.counselling_services, medical_aid: @serviceinfo.medical_aid, member_braille_books_circulating_library: @serviceinfo.member_braille_books_circulating_library, member_id: @serviceinfo.member_id, member_of_braille_jagriti_magazine: @serviceinfo.member_of_braille_jagriti_magazine, placement_services: @serviceinfo.placement_services, scholarship_student_aid_scheme: @serviceinfo.scholarship_student_aid_scheme, self_employment_aid: @serviceinfo.self_employment_aid }
    assert_redirected_to serviceinfo_path(assigns(:serviceinfo))
  end

  test "should destroy serviceinfo" do
    assert_difference('Serviceinfo.count', -1) do
      delete :destroy, id: @serviceinfo
    end

    assert_redirected_to serviceinfos_path
  end
end
