json.array!(@messages) do |message|
  json.extract! message, :id, :id, :user_id, :contact_id, :when, :contents, :pending, :sent
  json.url message_url(message, format: :json)
end
