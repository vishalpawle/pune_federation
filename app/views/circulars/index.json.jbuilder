json.array!(@circulars) do |circular|
  json.extract! circular, :id
  json.url circular_url(circular, format: :json)
end
