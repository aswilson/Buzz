json.array!(@numbers) do |number|
  json.extract! number, :id, :id, :full_number, :type, :active
  json.url number_url(number, format: :json)
end
