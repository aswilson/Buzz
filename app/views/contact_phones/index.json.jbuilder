json.array!(@contact_phones) do |contact_phone|
  json.extract! contact_phone, :id, :contact_id, :number_id, :active
  json.url contact_phone_url(contact_phone, format: :json)
end
