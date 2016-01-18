json.array!(@maritalinfos) do |maritalinfo|
  json.extract! maritalinfo, :id, :marital_status, :wedding_anniversary_date, :spouse_type, :spouse_firstt_name, :spouse_middle_name, :spouse_sur_name, :no_of_family_members, :kids, :parents_dependent_on_you, :member_id
  json.url maritalinfo_url(maritalinfo, format: :json)
end
