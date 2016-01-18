require 'test_helper'

class DisabilityinfosControllerTest < ActionController::TestCase
  setup do
    @disabilityinfo = disabilityinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:disabilityinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disabilityinfo" do
    assert_difference('Disabilityinfo.count') do
      post :create, disabilityinfo: { disability_reason: @disabilityinfo.disability_reason, have_you_disability: @disabilityinfo.have_you_disability, member_id: @disabilityinfo.member_id, percentage_disability: @disabilityinfo.percentage_disability, since_age: @disabilityinfo.since_age, type_disability: @disabilityinfo.type_disability }
    end

    assert_redirected_to disabilityinfo_path(assigns(:disabilityinfo))
  end

  test "should show disabilityinfo" do
    get :show, id: @disabilityinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @disabilityinfo
    assert_response :success
  end

  test "should update disabilityinfo" do
    patch :update, id: @disabilityinfo, disabilityinfo: { disability_reason: @disabilityinfo.disability_reason, have_you_disability: @disabilityinfo.have_you_disability, member_id: @disabilityinfo.member_id, percentage_disability: @disabilityinfo.percentage_disability, since_age: @disabilityinfo.since_age, type_disability: @disabilityinfo.type_disability }
    assert_redirected_to disabilityinfo_path(assigns(:disabilityinfo))
  end

  test "should destroy disabilityinfo" do
    assert_difference('Disabilityinfo.count', -1) do
      delete :destroy, id: @disabilityinfo
    end

    assert_redirected_to disabilityinfos_path
  end
end
