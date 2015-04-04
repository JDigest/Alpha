json.array!(@query_tags) do |query_tag|
  json.extract! query_tag, :id, :query_id, :tag_id, :relevance
  json.url query_tag_url(query_tag, format: :json)
end
