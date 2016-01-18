require 'test_helper'

class PersonalinfosControllerTest < ActionController::TestCase
  setup do
    @personalinfo = personalinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personalinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personalinfo" do
    assert_difference('Personalinfo.count') do
      post :create, personalinfo: { date_of_birth: @personalinfo.date_of_birth, first_name: @personalinfo.first_name, gender: @personalinfo.gender, last_name: @personalinfo.last_name, member_id: @personalinfo.member_id, middle_name: @personalinfo.middle_name, occupation: @personalinfo.occupation, type_human: @personalinfo.type_human }
    end

    assert_redirected_to personalinfo_path(assigns(:personalinfo))
  end

  test "should show personalinfo" do
    get :show, id: @personalinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personalinfo
    assert_response :success
  end

  test "should update personalinfo" do
    patch :update, id: @personalinfo, personalinfo: { date_of_birth: @personalinfo.date_of_birth, first_name: @personalinfo.first_name, gender: @personalinfo.gender, last_name: @personalinfo.last_name, member_id: @personalinfo.member_id, middle_name: @personalinfo.middle_name, occupation: @personalinfo.occupation, type_human: @personalinfo.type_human }
    assert_redirected_to personalinfo_path(assigns(:personalinfo))
  end

  test "should destroy personalinfo" do
    assert_difference('Personalinfo.count', -1) do
      delete :destroy, id: @personalinfo
    end

    assert_redirected_to personalinfos_path
  end
end
