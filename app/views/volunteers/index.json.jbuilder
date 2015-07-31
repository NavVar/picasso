json.array!(@volunteers) do |volunteer|
  json.extract! volunteer, :id, :name, :ocupation, :experience
  json.url volunteer_url(volunteer, format: :json)
end
