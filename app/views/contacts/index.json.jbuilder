json.array!(@contacts) do |contact|
  json.extract! contact, :id, :id, :first_name, :last_name, :image, :available, :status, :location, :latitude, :longitude, :time_zone
  json.url contact_url(contact, format: :json)
end
