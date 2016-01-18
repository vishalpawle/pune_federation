json.array!(@personalinfos) do |personalinfo|
  json.extract! personalinfo, :id, :type_human, :first_name, :middle_name, :last_name, :date_of_birth, :gender, :occupation, :member_id
  json.url personalinfo_url(personalinfo, format: :json)
end
