json.array!(@documentinfos) do |documentinfo|
  json.extract! documentinfo, :id, :type_id_proup, :id_no, :member_id
  json.url documentinfo_url(documentinfo, format: :json)
end
