json.array!(@activities) do |activity|
  json.extract! activity, :id, :tittle, :content
  json.url activity_url(activity, format: :json)
end
