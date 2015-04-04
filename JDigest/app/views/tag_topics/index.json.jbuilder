json.array!(@tag_topics) do |tag_topic|
  json.extract! tag_topic, :id, :tag_id, :topic_id, :weight
  json.url tag_topic_url(tag_topic, format: :json)
end
