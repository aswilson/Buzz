json.array!(@reminders) do |reminder|
  json.extract! reminder, :id, :id, :user_id, :contact_id, :when, :pending, :received
  json.url reminder_url(reminder, format: :json)
end
