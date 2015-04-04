json.array!(@results) do |result|
  json.extract! result, :id, :title, :summary, :description, :url, :source, :level, :type, :post_date, :exp_date, :education_req
  json.url result_url(result, format: :json)
end
