json.array!(@weeks) do |week|
  json.extract! week, :id, :num_week
  json.url week_url(week, format: :json)
end
