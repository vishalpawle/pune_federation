json.array!(@contactinfos) do |contactinfo|
  json.extract! contactinfo, :id, :email, :fax, :contact_no, :mobile_no, :mobile_2, :member_id
  json.url contactinfo_url(contactinfo, format: :json)
end
