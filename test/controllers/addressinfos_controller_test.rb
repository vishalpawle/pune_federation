require 'test_helper'

class AddressinfosControllerTest < ActionController::TestCase
  setup do
    @addressinfo = addressinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addressinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create addressinfo" do
    assert_difference('Addressinfo.count') do
      post :create, addressinfo: { address_1: @addressinfo.address_1, address_2: @addressinfo.address_2, city: @addressinfo.city, member_id: @addressinfo.member_id, pin: @addressinfo.pin, state: @addressinfo.state, taluka: @addressinfo.taluka, village: @addressinfo.village }
    end

    assert_redirected_to addressinfo_path(assigns(:addressinfo))
  end

  test "should show addressinfo" do
    get :show, id: @addressinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @addressinfo
    assert_response :success
  end

  test "should update addressinfo" do
    patch :update, id: @addressinfo, addressinfo: { address_1: @addressinfo.address_1, address_2: @addressinfo.address_2, city: @addressinfo.city, member_id: @addressinfo.member_id, pin: @addressinfo.pin, state: @addressinfo.state, taluka: @addressinfo.taluka, village: @addressinfo.village }
    assert_redirected_to addressinfo_path(assigns(:addressinfo))
  end

  test "should destroy addressinfo" do
    assert_difference('Addressinfo.count', -1) do
      delete :destroy, id: @addressinfo
    end

    assert_redirected_to addressinfos_path
  end
end
