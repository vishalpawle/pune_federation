json.array!(@activities) do |activity|
  json.extract! activity, :id, :anual_activity, :hdn_boolean, :activity_title, :activity_created_date, :activity_discription
  json.url activity_url(activity, format: :json)
end
