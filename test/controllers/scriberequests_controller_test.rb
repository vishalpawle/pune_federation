require 'test_helper'

class ScriberequestsControllerTest < ActionController::TestCase
  setup do
    @scriberequest = scriberequests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scriberequests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scriberequest" do
    assert_difference('Scriberequest.count') do
      post :create, scriberequest: { address_1: @scriberequest.address_1, address_2: @scriberequest.address_2, city: @scriberequest.city, exam_discription: @scriberequest.exam_discription, exam_duration: @scriberequest.exam_duration, exam_end_date: @scriberequest.exam_end_date, exam_end_time: @scriberequest.exam_end_time, exam_start_date: @scriberequest.exam_start_date, exam_start_time: @scriberequest.exam_start_time, medium_of_exam: @scriberequest.medium_of_exam, member_email: @scriberequest.member_email, member_id: @scriberequest.member_id, member_mobile: @scriberequest.member_mobile, member_name: @scriberequest.member_name, pin: @scriberequest.pin, rejection_reason: @scriberequest.rejection_reason, request_status: @scriberequest.request_status, scribe_email: @scriberequest.scribe_email, scribe_first_name: @scriberequest.scribe_first_name, scribe_last_name: @scriberequest.scribe_last_name, scribe_mobile: @scriberequest.scribe_mobile, state: @scriberequest.state, type_of_exam: @scriberequest.type_of_exam, what_type_of_scribe: @scriberequest.what_type_of_scribe }
    end

    assert_redirected_to scriberequest_path(assigns(:scriberequest))
  end

  test "should show scriberequest" do
    get :show, id: @scriberequest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scriberequest
    assert_response :success
  end

  test "should update scriberequest" do
    patch :update, id: @scriberequest, scriberequest: { address_1: @scriberequest.address_1, address_2: @scriberequest.address_2, city: @scriberequest.city, exam_discription: @scriberequest.exam_discription, exam_duration: @scriberequest.exam_duration, exam_end_date: @scriberequest.exam_end_date, exam_end_time: @scriberequest.exam_end_time, exam_start_date: @scriberequest.exam_start_date, exam_start_time: @scriberequest.exam_start_time, medium_of_exam: @scriberequest.medium_of_exam, member_email: @scriberequest.member_email, member_id: @scriberequest.member_id, member_mobile: @scriberequest.member_mobile, member_name: @scriberequest.member_name, pin: @scriberequest.pin, rejection_reason: @scriberequest.rejection_reason, request_status: @scriberequest.request_status, scribe_email: @scriberequest.scribe_email, scribe_first_name: @scriberequest.scribe_first_name, scribe_last_name: @scriberequest.scribe_last_name, scribe_mobile: @scriberequest.scribe_mobile, state: @scriberequest.state, type_of_exam: @scriberequest.type_of_exam, what_type_of_scribe: @scriberequest.what_type_of_scribe }
    assert_redirected_to scriberequest_path(assigns(:scriberequest))
  end

  test "should destroy scriberequest" do
    assert_difference('Scriberequest.count', -1) do
      delete :destroy, id: @scriberequest
    end

    assert_redirected_to scriberequests_path
  end
end
