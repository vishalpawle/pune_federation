json.array!(@scribes) do |scribe|
  json.extract! scribe, :id, :first_name, :last_name, :email, :mobile, :qualification
  json.url scribe_url(scribe, format: :json)
end
