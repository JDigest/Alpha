json.array!(@queries) do |query|
  json.extract! query, :id, :query_text, :location_text, :user_location
  json.url query_url(query, format: :json)
end
