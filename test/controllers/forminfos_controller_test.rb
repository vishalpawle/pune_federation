require 'test_helper'

class ForminfosControllerTest < ActionController::TestCase
  setup do
    @forminfo = forminfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forminfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forminfo" do
    assert_difference('Forminfo.count') do
      post :create, forminfo: { f_place: @forminfo.f_place, form_details: @forminfo.form_details, introduces_by: @forminfo.introduces_by, member_id: @forminfo.member_id, member_submited_form_date: @forminfo.member_submited_form_date }
    end

    assert_redirected_to forminfo_path(assigns(:forminfo))
  end

  test "should show forminfo" do
    get :show, id: @forminfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @forminfo
    assert_response :success
  end

  test "should update forminfo" do
    patch :update, id: @forminfo, forminfo: { f_place: @forminfo.f_place, form_details: @forminfo.form_details, introduces_by: @forminfo.introduces_by, member_id: @forminfo.member_id, member_submited_form_date: @forminfo.member_submited_form_date }
    assert_redirected_to forminfo_path(assigns(:forminfo))
  end

  test "should destroy forminfo" do
    assert_difference('Forminfo.count', -1) do
      delete :destroy, id: @forminfo
    end

    assert_redirected_to forminfos_path
  end
end
