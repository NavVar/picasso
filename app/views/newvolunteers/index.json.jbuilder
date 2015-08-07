json.array!(@newvolunteers) do |newvolunteer|
  json.extract! newvolunteer, :id, :lasname, :name, :birthdate, :ci, :address, :city, :phone, :cell, :mail, :ocupation, :free, :reason, :area
  json.url newvolunteer_url(newvolunteer, format: :json)
end
