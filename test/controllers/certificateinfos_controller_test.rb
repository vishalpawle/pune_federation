require 'test_helper'

class CertificateinfosControllerTest < ActionController::TestCase
  setup do
    @certificateinfo = certificateinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:certificateinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create certificateinfo" do
    assert_difference('Certificateinfo.count') do
      post :create, certificateinfo: { blindness_issued_dr_name: @certificateinfo.blindness_issued_dr_name, certificate_date: @certificateinfo.certificate_date, certificate_no: @certificateinfo.certificate_no, do_you_have_blindness: @certificateinfo.do_you_have_blindness, do_you_know_braille: @certificateinfo.do_you_know_braille, member_id: @certificateinfo.member_id, percent_blindness_stated: @certificateinfo.percent_blindness_stated, place: @certificateinfo.place }
    end

    assert_redirected_to certificateinfo_path(assigns(:certificateinfo))
  end

  test "should show certificateinfo" do
    get :show, id: @certificateinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @certificateinfo
    assert_response :success
  end

  test "should update certificateinfo" do
    patch :update, id: @certificateinfo, certificateinfo: { blindness_issued_dr_name: @certificateinfo.blindness_issued_dr_name, certificate_date: @certificateinfo.certificate_date, certificate_no: @certificateinfo.certificate_no, do_you_have_blindness: @certificateinfo.do_you_have_blindness, do_you_know_braille: @certificateinfo.do_you_know_braille, member_id: @certificateinfo.member_id, percent_blindness_stated: @certificateinfo.percent_blindness_stated, place: @certificateinfo.place }
    assert_redirected_to certificateinfo_path(assigns(:certificateinfo))
  end

  test "should destroy certificateinfo" do
    assert_difference('Certificateinfo.count', -1) do
      delete :destroy, id: @certificateinfo
    end

    assert_redirected_to certificateinfos_path
  end
end
