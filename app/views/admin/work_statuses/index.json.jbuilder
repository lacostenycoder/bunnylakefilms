json.array!(@work_statuses) do |work_status|
  json.extract! work_status, 
  json.url work_status_url(work_status, format: :json)
end