require 'test_helper'

class DonationsControllerTest < ActionController::TestCase
  setup do
    @donation = donations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:donations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create donation" do
    assert_difference('Donation.count') do
      post :create, donation: { account_flag: @donation.account_flag, account_no: @donation.account_no, bank_name: @donation.bank_name, dd_name: @donation.dd_name, donar_email: @donation.donar_email, donar_mobile: @donation.donar_mobile, donar_name: @donation.donar_name, donation_amount: @donation.donation_amount, donation_comment: @donation.donation_comment, donation_remarks: @donation.donation_remarks, followup_with_donar: @donation.followup_with_donar, how_did_you_find_us: @donation.how_did_you_find_us, ifsc_code: @donation.ifsc_code, receive_donation: @donation.receive_donation, to_project: @donation.to_project }
    end

    assert_redirected_to donation_path(assigns(:donation))
  end

  test "should show donation" do
    get :show, id: @donation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @donation
    assert_response :success
  end

  test "should update donation" do
    patch :update, id: @donation, donation: { account_flag: @donation.account_flag, account_no: @donation.account_no, bank_name: @donation.bank_name, dd_name: @donation.dd_name, donar_email: @donation.donar_email, donar_mobile: @donation.donar_mobile, donar_name: @donation.donar_name, donation_amount: @donation.donation_amount, donation_comment: @donation.donation_comment, donation_remarks: @donation.donation_remarks, followup_with_donar: @donation.followup_with_donar, how_did_you_find_us: @donation.how_did_you_find_us, ifsc_code: @donation.ifsc_code, receive_donation: @donation.receive_donation, to_project: @donation.to_project }
    assert_redirected_to donation_path(assigns(:donation))
  end

  test "should destroy donation" do
    assert_difference('Donation.count', -1) do
      delete :destroy, id: @donation
    end

    assert_redirected_to donations_path
  end
end
