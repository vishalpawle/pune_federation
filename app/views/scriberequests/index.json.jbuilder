json.array!(@scriberequests) do |scriberequest|
  json.extract! scriberequest, :id, :member_name, :member_email, :member_mobile, :exam_start_date, :exam_end_date, :exam_duration, :exam_start_time, :exam_end_time, :type_of_exam, :what_type_of_scribe, :medium_of_exam, :address_1, :address_2, :city, :pin, :state, :exam_discription, :scribe_first_name, :scribe_last_name, :scribe_email, :scribe_mobile, :rejection_reason, :request_status, :member_id
  json.url scriberequest_url(scriberequest, format: :json)
end
