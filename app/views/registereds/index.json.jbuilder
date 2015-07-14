json.array!(@registereds) do |registered|
  json.extract! registered, :id, :name, :email
  json.url registered_url(registered, format: :json)
end
