json.array!(@professionalinfos) do |professionalinfo|
  json.extract! professionalinfo, :id, :standard_passed, :professional_Qualification, :es_address_1, :es_address_2, :es_city, :es_pin, :es_state, :es_tell, :es_email, :designation, :department, :occupation_details, :annual_income, :unemployed_registered_details, :unemployed_registration_no, :employment_registration_date, :member_id
  json.url professionalinfo_url(professionalinfo, format: :json)
end
