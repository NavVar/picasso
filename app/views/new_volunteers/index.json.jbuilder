json.array!(@new_volunteers) do |new_volunteer|
  json.extract! new_volunteer, :id, :lasname, :name, :birthdate, :ci, :address, :city, :phone, :cell, :mail, :ocupation, :free, :reason, :area
  json.url new_volunteer_url(new_volunteer, format: :json)
end
