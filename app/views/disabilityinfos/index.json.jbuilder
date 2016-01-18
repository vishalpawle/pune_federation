json.array!(@disabilityinfos) do |disabilityinfo|
  json.extract! disabilityinfo, :id, :have_you_disability, :type_disability, :percentage_disability, :since_age, :disability_reason, :member_id
  json.url disabilityinfo_url(disabilityinfo, format: :json)
end
