json.array!(@addressinfos) do |addressinfo|
  json.extract! addressinfo, :id, :address_1, :address_2, :village, :taluka, :city, :pin, :state, :member_id
  json.url addressinfo_url(addressinfo, format: :json)
end
