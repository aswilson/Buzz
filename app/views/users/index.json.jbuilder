json.array!(@users) do |user|
  json.extract! user, :id, :id, :contact_id, :fb_email, :fb_password, :active
  json.url user_url(user, format: :json)
end
