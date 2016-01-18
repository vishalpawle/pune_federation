require 'test_helper'

class DocumentinfosControllerTest < ActionController::TestCase
  setup do
    @documentinfo = documentinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:documentinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create documentinfo" do
    assert_difference('Documentinfo.count') do
      post :create, documentinfo: { id_no: @documentinfo.id_no, member_id: @documentinfo.member_id, type_id_proup: @documentinfo.type_id_proup }
    end

    assert_redirected_to documentinfo_path(assigns(:documentinfo))
  end

  test "should show documentinfo" do
    get :show, id: @documentinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @documentinfo
    assert_response :success
  end

  test "should update documentinfo" do
    patch :update, id: @documentinfo, documentinfo: { id_no: @documentinfo.id_no, member_id: @documentinfo.member_id, type_id_proup: @documentinfo.type_id_proup }
    assert_redirected_to documentinfo_path(assigns(:documentinfo))
  end

  test "should destroy documentinfo" do
    assert_difference('Documentinfo.count', -1) do
      delete :destroy, id: @documentinfo
    end

    assert_redirected_to documentinfos_path
  end
end
