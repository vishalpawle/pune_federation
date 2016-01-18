json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :company, :type_job, :url, :discription
  json.url job_url(job, format: :json)
end
