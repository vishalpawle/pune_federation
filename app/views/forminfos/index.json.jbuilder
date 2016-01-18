json.array!(@forminfos) do |forminfo|
  json.extract! forminfo, :id, :introduces_by, :member_submited_form_date, :f_place, :form_details, :member_id
  json.url forminfo_url(forminfo, format: :json)
end
