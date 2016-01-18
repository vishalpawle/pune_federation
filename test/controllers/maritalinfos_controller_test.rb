require 'test_helper'

class MaritalinfosControllerTest < ActionController::TestCase
  setup do
    @maritalinfo = maritalinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maritalinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maritalinfo" do
    assert_difference('Maritalinfo.count') do
      post :create, maritalinfo: { kids: @maritalinfo.kids, marital_status: @maritalinfo.marital_status, member_id: @maritalinfo.member_id, no_of_family_members: @maritalinfo.no_of_family_members, parents_dependent_on_you: @maritalinfo.parents_dependent_on_you, spouse_firstt_name: @maritalinfo.spouse_firstt_name, spouse_middle_name: @maritalinfo.spouse_middle_name, spouse_sur_name: @maritalinfo.spouse_sur_name, spouse_type: @maritalinfo.spouse_type, wedding_anniversary_date: @maritalinfo.wedding_anniversary_date }
    end

    assert_redirected_to maritalinfo_path(assigns(:maritalinfo))
  end

  test "should show maritalinfo" do
    get :show, id: @maritalinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @maritalinfo
    assert_response :success
  end

  test "should update maritalinfo" do
    patch :update, id: @maritalinfo, maritalinfo: { kids: @maritalinfo.kids, marital_status: @maritalinfo.marital_status, member_id: @maritalinfo.member_id, no_of_family_members: @maritalinfo.no_of_family_members, parents_dependent_on_you: @maritalinfo.parents_dependent_on_you, spouse_firstt_name: @maritalinfo.spouse_firstt_name, spouse_middle_name: @maritalinfo.spouse_middle_name, spouse_sur_name: @maritalinfo.spouse_sur_name, spouse_type: @maritalinfo.spouse_type, wedding_anniversary_date: @maritalinfo.wedding_anniversary_date }
    assert_redirected_to maritalinfo_path(assigns(:maritalinfo))
  end

  test "should destroy maritalinfo" do
    assert_difference('Maritalinfo.count', -1) do
      delete :destroy, id: @maritalinfo
    end

    assert_redirected_to maritalinfos_path
  end
end
